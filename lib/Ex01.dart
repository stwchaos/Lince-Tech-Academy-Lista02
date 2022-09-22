import 'dart:io';

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

class Telefone extends MeioDeComunicacao {
  console(String tel) {
    stdout.write("[TELEFONE] ");
  }
}

class Celular extends MeioDeComunicacao {
  console(String tel) {
    stdout.write("[CELULAR] ");
  }
}

class Orelhao extends MeioDeComunicacao {
  console(String tel) {
    stdout.write("[ORELHÃO] ");
  }
}

class MeioDeComunicacao {
  fazerLigacao(String tel) {
    String aleatorioS = aleatorio().toString();
    int compare = 0;

    if (compare == aleatorioS.compareTo("Instance of 'Telefone'")) {
      Telefone().console(tel);
    }
    if (compare == aleatorioS.compareTo("Instance of 'Celular'")) {
      Celular().console(tel);
    }
    if (compare == aleatorioS.compareTo("Instance of 'Orelhao'")) {
      Orelhao().console(tel);
    }

    stdout.write("Ligando para $tel ");
  }
}
