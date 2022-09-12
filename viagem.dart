import 'enum_transporte.dart';

class Viagem {
  Viagem({
    required this.locomocao,
  });

  //Conteúdo de STATIC
  static String codigoDeViagem =
      'ANTONIOCLAUDIOFERREIRA0711'; //As variáveis estáticas (static) permitem que o objeto da própria classe as referenciem, sem a criação de nenhuma instância para tal
  double preco = 0;

  //Conteúdo de ENUM
  Transporte locomocao;
  void escolherMeioTransporteEnum(Transporte locomocao) {
    if (locomocao == Transporte.carro) {
      print('Vou viajar de carro!');
    } else if (locomocao == Transporte.aviao) {
      print('Vou viajar de avião!');
    } else {
      print('Ainda não sei como vou viajar!');
    }
  }

  //Conteúdo de MAP
  Map<String, dynamic> registroPassagens = {};
  registrarPassagens(String local, dynamic preco) {
    registroPassagens[local] = preco;
    return registroPassagens;
  }

  //Conteúdo de SETS
  Set<String> registrosVisitados = <String>{};
  registrarDestinos(String destino) {
    registrosVisitados.add(destino);
    _contagemLocaisVisitados = _contagemLocaisVisitados + 1;
    return registrosVisitados;
  }

  //Conteúdo de GET
  int _contagemLocaisVisitados = 0;
  int get consultarTotalLocaisVisitados {
    return _contagemLocaisVisitados;
  }

  //Conteúdo de SET
  void set alterarLocaisVisitados(int novaQuantidade) {
    if (novaQuantidade < 10) {
      _contagemLocaisVisitados = novaQuantidade;
    } else {
      print(
          'Não é possível visitar $novaQuantidade lugares em tão pouco tempo!');
    }
  }

  //Conteúdo de SWITCH
  void escolherMeioTransporteSwitch(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print('Vou viajar de carro!');
        break;
      case Transporte.aviao:
        print('Vou viajar de avião!');
        break;
      default:
        print('Ainda não sei como vou viajar!');
    }
  }
}
