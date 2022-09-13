// NÃO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao = ('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

// -------------------------------------------------------------
// ADICIONAR IMPLEMENTAÇÃO RESTANTE ABAIXO DESSA LINHA
// -------------------------------------------------------------

Orelhao() {}

Celular() {}

Telefone() {}

class MeioDeComunicacao {
  String fazerLigacao;

  MeioDeComunicacao(this.fazerLigacao) {}
}

void saida(fazerLigacao) {
  print("[$MeioDeComunicacao] Ligando para $fazerLigacao");
}
