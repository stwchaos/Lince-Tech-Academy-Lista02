// NÃO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
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

class MeioDeComunicacao {
  void fazerLigacao(String tel) {}
}

class Telefone extends MeioDeComunicacao {
  @override
  void fazerLigacao(String tel) {
    print("[TELEFONE] Ligando para $tel ");
  }
}

class Celular extends MeioDeComunicacao {
  @override
  void fazerLigacao(String tel) {
    print("[CELULAR] Ligando para $tel ");
  }
}

class Orelhao extends MeioDeComunicacao {
  @override
  void fazerLigacao(String tel) {
    print("[ORELHÃO] Ligando para $tel ");
  }
}
