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

String aleatorioreal = aleatorio() as String;

MeioDeComunicacao Telefone() {
  return MeioDeComunicacao();
}

MeioDeComunicacao Celular() {
  return MeioDeComunicacao();
}

MeioDeComunicacao Orelhao() {
  return MeioDeComunicacao();
}

class MeioDeComunicacao {
  //void aleatorio(MeioDeComunicacao) {
  // print("$MeioDeComunicacao");
  //}

  void fazerLigacao(String tel) {
    //final a = "dsakldasjkl";
    //List<MeioDeComunicacao> ran = aleatorio();
    //print(ran.toString());
    print(aleatorio());

    print("[ $MeioDeComunicacao ] Ligando para $tel");
  }
}

  // MeioDeComunicacao(this.fazerLigacao) {}
