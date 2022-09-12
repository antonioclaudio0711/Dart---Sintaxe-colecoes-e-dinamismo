import 'enum_transporte.dart';
import 'viagem.dart';

void main() {
  Viagem minhaViagem = Viagem(locomocao: Transporte.aviao);

  print(minhaViagem.consultarTotalLocaisVisitados);

  minhaViagem.registrarDestinos('Califórnia');
  print(minhaViagem.consultarTotalLocaisVisitados);

  minhaViagem.alterarLocaisVisitados = 9;
  print(minhaViagem.consultarTotalLocaisVisitados);

  minhaViagem.alterarLocaisVisitados = 56;
  print(minhaViagem.consultarTotalLocaisVisitados);
}
