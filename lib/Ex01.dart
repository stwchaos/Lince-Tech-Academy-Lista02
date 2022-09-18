//EM ANDAMENTO

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

//String aleatorioreal = aleatorio(Telefone, Celular, Orelhao) as String;

MeioDeComunicacao Telefone() {
  return MeioDeComunicacao();

  //manipulaçao de string - toUpperCase()
}

MeioDeComunicacao Celular() {
  return MeioDeComunicacao();
  //manipulaçao de string - toUpperCase()
}

MeioDeComunicacao Orelhao() {
  return MeioDeComunicacao();
  //manipulaçao de string - toUpperCase()
}

class MeioDeComunicacao {
//return aleatorio();
//{math.Random(math.Random(MeioDeComunicacao)};
//}
  aleatorio(meiosDeComunicacao) {
    meiosDeComunicacao(this.Telefone, this.Celular, this.Orelhao);

    print(meiosDeComunicacao);
//  return MeioDeComunicacao;
//  return Telefone();
//  return Orelhao();
//  return Celular();
  }

  fazerLigacao(String tel) {
    //final a = "dsakldasjkl";
    //List<MeioDeComunicacao> ran = aleatorio();
    //print(ran.toString());
    // print(aleatorio());

    //void aleatorio(MeioDeComunicacao aleatorio) {
    //final aleatorioNovo = aleatorio;
    //}

    print(" ${aleatorio}  Ligando para $tel");
  }
}

//{math.Random(math.Random(MeioDeComunicacao)}
// MeioDeComunicacao(this.fazerLigacao) {}