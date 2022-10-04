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

  var numeroRefeicoes = 0;
  for (var i = 0; i < 5; i++) {
    if (!pessoa.precisaRefeicao) {
      continue;
    }

    final fornecedor = fornecedores[random.nextInt(fornecedores.length)];
    pessoa.refeicao(fornecedor);
    numeroRefeicoes++;
  }

  pessoa.info();
  pessoa.consoleCaloriasIniciais();
  pessoa.totalDeCalorias();
  pessoa.consoleStatus();
  pessoa.numeroDeRefeicoes(numeroRefeicoes);
  pessoa.precisaDeRefeicoes(true, Status.deficitExtremo, Status.deficit,
      Status.satisfeito, Status.excesso, 0, Status.deficit);
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
  Pessoa() {
    _caloriasInicial = Random().nextInt(100).toInt();

    if (_caloriasInicial <= 500) {
      status = Status.deficitExtremo;
    } else if (_caloriasInicial <= 1800) {
      status = Status.deficit;
    } else if (_caloriasInicial <= 2500) {
      status = Status.satisfeito;
    } else {
      status = Status.excesso;
    }
  }

  late Status status;

  int numeroRefeicoes = 0;

  int _caloriasInicial = 0;

  final lista = <int>[];

  void refeicao(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo: ${produto.nome}, contém ${produto.calorias} calororias');

    _caloriasConsumidas += produto.calorias;

    final total = getTotalDeCalorias();
    if (total <= 500) {
      status = Status.deficitExtremo;
    } else if (total <= 1800) {
      status = Status.deficit;
    } else if (total <= 2500) {
      status = Status.satisfeito;
    } else {
      status = Status.excesso;
    }
  }

  // Acumulador de calorias

  int _caloriasConsumidas = 0;

  bool get precisaRefeicao =>
      status == Status.deficitExtremo || status == Status.deficit;

  // Gera calorias iniciais aleatorimente;

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

  void consoleStatus() {
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
    } else if (status == satisfeito || status == excesso) {
      isPrecisaRefeicoes = true;
      print('Precisa de mais refeições: $isPrecisaRefeicoes');
    }
  }

  void numeroDeRefeicoes(int numeroRefeicoes) =>
      print("Numero de refeições: $numeroRefeicoes");
}

enum Status {
  deficitExtremo,
  deficit,
  satisfeito,
  excesso,
}
