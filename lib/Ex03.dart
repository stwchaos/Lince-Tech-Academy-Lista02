import 'dart:math' as math;

void main() {
  final biblioteca = BibliotecaDeMusicas();
  biblioteca.consoleMusicas();
  biblioteca.convertHoras(biblioteca.somaDosSegundos());
}

class Musica {
  final String tituloDaMusica;
  final String nomeDoArtista;
  final String nomeDoAlbum;
  final int duracaoEmSegundos;

  Musica(this.tituloDaMusica, this.nomeDoArtista, this.nomeDoAlbum,
      this.duracaoEmSegundos);
}

class BibliotecaDeMusicas {
  final _bibliotecaMusicas = <Musica>[
    Musica('Emerald Sword', 'Rhapsody of Fire', 'Legendary Years', 263),
    Musica('Welcome to the Jungle', 'Appetite for Destruction', 'Guns N Roses',
        279),
    Musica('Just ', 'The Bends', 'Radiohead', 234),
    Musica('Creep', 'Creep', 'Radiohead', 238),
    Musica('Snuff', 'All Hope Is Gone', 'Slipknot', 373),
    Musica('Teenagers', 'The Black Parade', 'My Chemical Romance', 172),
    Musica(
        'Hallowed Be Thy Name', 'he Number of the Beast', 'Iron Maiden', 431),
    Musica('Somewhere I Belong', 'Meteora', 'linkin Park', 225),
  ];

  void consoleMusicas() {
    for (var i = 0; i < _bibliotecaMusicas.length; i++) {
      print('Título da música: ${_bibliotecaMusicas[i].tituloDaMusica},'
          '\nArtista: ${_bibliotecaMusicas[i].nomeDoArtista},\nAlbum: ${_bibliotecaMusicas[i].nomeDoAlbum},'
          '\nDuração em segundos: ${_bibliotecaMusicas[i].duracaoEmSegundos}\n--------------------------------');
    }
  }

  int somaDosSegundos() {
    int totalDeSegundos = 0;

    for (var i = 0; i < _bibliotecaMusicas.length; i++) {
      totalDeSegundos += _bibliotecaMusicas[i].duracaoEmSegundos;
    }

    return totalDeSegundos;
  }

  void convertHoras(int segundos) {
    int segundo = segundos % 60;
    int hora = segundos ~/ 60;
    int minuto = hora % 60;
    hora = hora ~/ 60;

    print("Duração em horas da biblioteca: $hora:$minuto:$segundo");
  }
}























/*void main() {
  final biblioteca = BibliotecaDeMusicas(['Emerald Sword','Rhapsody of Fire', 'Legendary Years', 263]);

  biblioteca.console();
}

class BibliotecaDeMusicas {
  BibliotecaDeMusicas(this.musicas);

  List<Musicas> musicas;

  void console() {
    print('Biblioteca: ');

  }
}

class Musicas {
  Musicas(this.tituloDaMusica, this.nomeDoArtista, this.nomeDoAlbum, this.duracaoEmSegundos)

  String nomeDoArtista, nomeDoAlbum, tituloDaMusica;
  int duracaoEmSegundos;

  @override
  String toString() {
    return '';
  }
}
*/

/*import 'dart:io';

void main() {
  Musica musica1 = Musica();
  Musica musica2 = Musica();
  musica1.tituloMusica = "Emerald Sword";
  musica1.nomeDoAlbum = "Legendary Years";
  musica1.nomeDoArtista = "Rhapsody of Fire";
  musica1.duracaoEmSegundos = "263 segundos";

  musica2.tituloMusica = "Welcome to the Jungle";
  musica2.nomeDoAlbum = "Appetite for Destruction";
  musica2.nomeDoArtista = "Guns N Roses";
  musica2.duracaoEmSegundos = "279 segundos";

  print("Digita o nome da música, do album ou do artista para buscar: ");
  String? opcao = stdin.readLineSync();
  List<Musica> musicas = [musica1, musica2];

  var musicaPesquisada =
      musicas.where((element) => element.tituloMusica == opcao).toList();
  //print(musicaPesquisada[0].tituloMusica);
  var albumPesquisado =
      musicas.where((element) => element.nomeDoAlbum == opcao).toList();
  //print(albumPesquisado[0].nomeDoAlbum);
  var artistaPesquisado =
      musicas.where((element) => element.nomeDoArtista == opcao).toList();
  //print(artistaPesquisado[0].nomeDoArtista);

  if (opcao == "Emerald Sword" ||
      opcao == "Legendary Years" ||
      opcao == "Rhapsody of Fire") {
    print(
        "Nome da música: ${musicaPesquisada[0].tituloMusica}\nNome do álbum: ${albumPesquisado[0].nomeDoAlbum}\nNome do artista: ${artistaPesquisado[0].nomeDoArtista}\nDuração em segundos: ${musica1.duracaoEmSegundos}");
  } else {
    print("continuar");
  }
}

class Musica {
  String tituloMusica = '';
  String nomeDoAlbum = '';
  String nomeDoArtista = '';
  String duracaoEmSegundos = '';

  String get getMusica => tituloMusica;
  String get getAlbum => nomeDoAlbum;
  String get getArtist => nomeDoArtista;
  String get getDuracao => duracaoEmSegundos;

  //Musica({this.tituloMusica,this.nomeDoAlbum,this.nomeDoArtista});
}*/