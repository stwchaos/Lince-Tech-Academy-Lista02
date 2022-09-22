//EM ANDAMENTO

import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final fornecedor = FornecedorDeBebidas();
  final fornecedor1 = FornecedorDeSanduiches();
  final fornecedor2 = FornecedorDeBolos();
  final fornecedor3 = FornecedorDeSaladas();
  final fornecedor4 = FornecedorDePetiscos();
  final fornecedor5 = FornecedorDeUltraCaloricos();
// Consumindo produtos fornecidos

  for (var i = 0; i < 5; i++) {
    pessoa.refeicao(fornecedor);
    /*pessoa.refeicao(fornecedor1);
    pessoa.refeicao(fornecedor2);
    pessoa.refeicao(fornecedor3);
    pessoa.refeicao(fornecedor4);
    pessoa.refeicao(fornecedor5);*/
  }

  pessoa.informacoes(Status);
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

class FornecedorDeBebidas extends Pessoa {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Café', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class FornecedorDeSanduiches extends Pessoa {
  final _random = Random();
  final _cardapioSanduiches = <Produto>[
    Produto('X-salada', 1800),
    Produto('X-burguer', 1000),
    Produto('X-filé', 567),
    Produto('X-tudo', 800)
  ];

  Produto fornecedor2() {
    return _cardapioSanduiches[_random.nextInt(_cardapioSanduiches.length)];
  }
}

class FornecedorDeBolos extends Pessoa {
  final _random = Random();
  final _cardapioBolos = <Produto>[
    Produto('Bolo de chocolate', 220),
    Produto('Bolo de baunilha', 252),
    Produto('Bolo de fubá', 125),
    Produto('Bolo de morango', 134)
  ];

  Produto fornecedor3() {
    return _cardapioBolos[_random.nextInt(_cardapioBolos.length)];
  }
}

class FornecedorDeSaladas extends Pessoa {
  final _random = Random();
  final _cardapioSaladas = <Produto>[
    Produto('Salada tropical', 79),
    Produto('Salada mix', 100),
    Produto('Salada com salmão', 150),
    Produto('Salada da horta', 67)
  ];

  Produto fornecedor4() {
    return _cardapioSaladas[_random.nextInt(_cardapioSaladas.length)];
  }
}

class FornecedorDePetiscos extends Pessoa {
  final _random = Random();
  final _cardapioPetiscos = <Produto>[
    Produto('Porção de camarão', 230),
    Produto('Porção de batata', 256),
    Produto('Porção de polenta frita', 300),
    Produto('Coração', 340)
  ];

  Produto fornecedor5() {
    return _cardapioPetiscos[_random.nextInt(_cardapioPetiscos.length)];
  }
}

class FornecedorDeUltraCaloricos extends Pessoa {
  final _random = Random();
  final _cardapioCaloricos = <Produto>[
    Produto('Caipirinha', 987),
    Produto('Acarajé', 897),
    Produto('Sorvete', 789),
    Produto('Picanha', 890)
  ];

  Produto fornecedor6() {
    return _cardapioCaloricos[_random.nextInt(_cardapioCaloricos.length)];
  }
}

class Pessoa {
  // Acumulador de calorias
  int _caloriasConsumidas = 0;

  /// Imprime as informações desse consumidor
  informacoes(Status) {
    if (_caloriasConsumidas <= 500) {
      print('Deficit extremo de calorias');
    } else if (_caloriasConsumidas <= 1800) {
      print('Deficit de calorias');
    } else if (_caloriasConsumidas <= 2500) {
      print('Pessoa está satisfeita');
    } else if (_caloriasConsumidas > 2500) {
      print('Excesso de calorias');
    }

    print('Calorias consumidas: $_caloriasConsumidas');
  }

  /// Consome um produto e aumenta o numero de calorias
  void refeicao(FornecedorDeBebidas fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;
  }
}

enum Status { deficitExtremo, deficit, satisfeita, excesso }
