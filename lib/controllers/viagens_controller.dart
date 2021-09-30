import 'package:project_decolar/models/viagens.dart';
import 'package:project_decolar/repositorys/companhias_repository.dart';

class ViagensController {
  List<Viagem> viagens = [];

  buscarPorCidade(String origem, String destino, double valor) {
    for (var item in CompanhiaRepository.tabela) {
      for (var viagem in item.viagens) {
        if (viagem.destino.nome == destino ||
            viagem.origem.nome == origem ||
            viagem.valor <= valor) {
          viagens.add(viagem);
        }
      }
    }
    return viagens;
  }
}
