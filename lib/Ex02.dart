import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final fornecedor = FornecedorDeBebidas();

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    pessoa.refeicao(fornecedor);
  }

  pessoa.informacoes();
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

class FornecedorDeBebidas {
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

class Pessoa {
  // Acumulador de calorias
  int _caloriasConsumidas = 0;

  /// Imprime as informações desse consumidor
  void informacoes() {
    print('Calorias consumidas: $_caloriasConsumidas');
  }

  /// Consome um produto e aumenta o numero de calorias
  void refeicao(FornecedorDeBebidas fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;
  }
}
