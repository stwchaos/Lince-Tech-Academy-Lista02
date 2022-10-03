//import 'dart:ffi';
import 'dart:math';

void main() {
  final random = Random();
  final pessoa = Pessoa();
  List fornecedores = [
    Fornecedor(<Produto>[
      Produto('Agua', 0),
      Produto('Refrigerante', 200),
      Produto('Suco de fruta', 100),
      Produto('Energetico', 135),
      Produto('Café', 60),
      Produto('Cha', 35),
    ]),
    Fornecedor(<Produto>[
      Produto('X-salada', 1800),
      Produto('X-burguer', 1000),
      Produto('X-filé', 567),
      Produto('X-tudo', 800)
    ]),
    Fornecedor(<Produto>[
      Produto('Bolo de chocolate', 220),
      Produto('Bolo de baunilha', 252),
      Produto('Bolo de fubá', 125),
      Produto('Bolo de morango', 134),
    ]),
    Fornecedor(<Produto>[
      Produto('Salada tropical', 79),
      Produto('Salada mix', 100),
      Produto('Salada com salmão', 150),
      Produto('Salada da horta', 67),
    ]),
    Fornecedor(<Produto>[
      Produto('Porção de camarão', 230),
      Produto('Porção de batata', 256),
      Produto('Porção de polenta frita', 300),
      Produto('Coração', 340)
    ]),
    Fornecedor(<Produto>[
      Produto('Caipirinha', 1987),
      Produto('Acarajé', 1997),
      Produto('Sorvete', 1789),
      Produto('Picanha', 1990)
    ])
  ];
  for (var i = 0; i < 5; i++) {
    final fornecedor = fornecedores[random.nextInt(fornecedores.length)];
    pessoa.refeicao(fornecedor);
  }
  pessoa.info();

  pessoa.consoleCaloriasIniciais();

  pessoa.totalDeCalorias();

  pessoa.consoleStatus(Status.deficit);

  pessoa.precisaDeRefeicoes(true, Status.deficitExtremo, Status.deficit,
      Status.satisfeito, Status.excesso, 0, Status.deficit);
  //bool isPrecisaRefeicoes, Status deficitExtremo, Status deficit, int numeroRefeicoes

  pessoa.numeroDeRefeicoes(0);
  //Pessoa numeroRefeicoes
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

class Fornecedor {
  Fornecedor(this._produtosDisponiveis);

  final _random = Random();
  final List<Produto> _produtosDisponiveis;

  Produto fornecer() {
    return _produtosDisponiveis[_random.nextInt(_produtosDisponiveis.length)];
  }
}

class Pessoa {
  late Status status;

  int numeroRefeicoes = 0;

  void refeicao(fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo: ${produto.nome}, contém ${produto.calorias} calororias');

    _caloriasConsumidas = produto.calorias;
  }

  // Acumulador de calorias

  int _caloriasConsumidas = 0;

  // Gera calorias iniciais aleatorimente
  final int _caloriasInicial = Random().nextInt(2090);

  int getTotalDeCalorias() {
    int totalDeCalorias = _caloriasConsumidas + _caloriasInicial;
    return totalDeCalorias;
  }

  //
  void totalDeCalorias() {
    print(
        "Total de calorias da pessoa após refeição: ${_caloriasConsumidas + _caloriasInicial}");
  }

  /// Imprime as informações desse consumidor
  void info() {
    print('Calorias consumidas: $_caloriasConsumidas');
  }

  void consoleCaloriasIniciais() {
    print("Calorias iniciais: $_caloriasInicial");
  }

  /// Consome uma bebida e aumenta o numero de calorias
  void refeicoes(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;

    if (getTotalDeCalorias() <= 500) {
      status = Status.deficitExtremo;
    } else if (getTotalDeCalorias() > 500 && getTotalDeCalorias() <= 1800) {
      status = Status.deficit;
    } else if (getTotalDeCalorias() > 1800 && getTotalDeCalorias() <= 2500) {
      status = Status.satisfeito;
    } else if (getTotalDeCalorias() > 2500) {
      status = Status.excesso;
    }
  }

  /////ERROS OCORREM A PARTIR DAQUI

  //não modifica o status
  void consoleStatus(Status status) {
    //consoleStatus(this.status); -> informa que status não foi inicializado. Não sei como inicializar ele
    switch (status) {
      case Status.deficitExtremo:
        print("Status: Deficit extremo de calorias");
        break;
      case Status.deficit:
        print("Status: Deficit de calorias");
        break;
      case Status.satisfeito:
        print("Status: Pessoa satisfeita");
        break;
      case Status.excesso:
        print("Status: Excesso de calorias");
    }
  }

  //Não modifica o bool, fica sempre no false
  void precisaDeRefeicoes(
      bool isPrecisaRefeicoes,
      Status deficitExtremo,
      Status deficit,
      Status satisfeito,
      Status excesso,
      int numeroRefeicoes,
      Status status) {
    if (status == deficitExtremo || status == deficit) {
      isPrecisaRefeicoes = false;
      print('Precisa de mais refeições: $isPrecisaRefeicoes');
      /*numeroRefeicoes++;
      numeroDeRefeicoes(this.numeroRefeicoes);*/
    } else if (status == satisfeito || status == excesso) {
      isPrecisaRefeicoes = true;
      print('Precisa de mais refeições: $isPrecisaRefeicoes');
      /*numeroRefeicoes++;
      numeroDeRefeicoes(this.numeroRefeicoes);*/
    }
  }

  //calculo não realizado
  void numeroDeRefeicoes(int numeroRefeicoes) =>
      print("Numero de refeições: $numeroRefeicoes");
}

enum Status {
  deficitExtremo,
  deficit,
  satisfeito,
  excesso,
}
