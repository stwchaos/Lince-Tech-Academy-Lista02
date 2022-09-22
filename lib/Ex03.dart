//EM ANDAMENTO
void main() {
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


  buscar(String texto) {
    int i = 0;
    String opcao = ' ';
    int x = 0;
    nomeDaMusica.forEach((element) {
      opcao = 'Musica';
      if (0 == texto.compareTo(nomeDaMusica[i])) {
        musicaSelecionado(x, i, texto, opcao);
        x++;
      }
      i++;
    });
    i = 0;

    nomeDoArtista.forEach((element) {
      opcao = 'Artista';
      if (0 == texto.compareTo(nomeDoArtista[i])) {
        musicaSelecionado(x, i, texto, opcao);
        x++;
      }
      i++;
    });
    i = 0;

    nomeDoAlbum.forEach((element) {
      opcao = 'Album';
      if (0 == texto.compareTo(nomeDoAlbum[i])) {
        musicaSelecionado(x, i, texto, opcao);
        x++;
      }
      i++;
    });
  }

  musicaSelecionado(int x, int i, String texto, opcao) {
    if (x == 0) {
      print('Músicas encontradas procurando pelo $opcao $texto\n');
      x++;
    }

    print('Titulo: ${nomeDaMusica[i]}\n'
        'Artista: ${nomeDoArtista[i]}\n'
        'Album: ${nomeDoAlbum[i]}\n'
        'Duração em Segundos: ${duracaoEmSegundos[i]}\n');
  }




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
