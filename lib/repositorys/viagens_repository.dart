import 'package:project_decolar/models/cidades.dart';
import '../models/viagens.dart';

class ViagemRepository {
  criarViagens(int value) {
    List<Viagem> listagem = [];

    if (value == 1) {
      List<Viagem> viagensA = [
        Viagem(Cidade("Palmas", "Tocantins"), Cidade("São Paulo", "São Paulo"),
            "Boinh456", DateTime.now(), DateTime.now(), 1200),
        Viagem(Cidade("São Paulo", "São Paulo"), Cidade("Palmas", "Palmas"),
            "Boinh4465", DateTime.now(), DateTime.now(), 1900),
        Viagem(
            Cidade("Porto", "Portugual"),
            Cidade("Rio de Janeiro", "Rio de Janeiro"),
            "Boinh456",
            DateTime.now(),
            DateTime.now(),
            3000),
      ];
      listagem = viagensA;
    } else if (value == 2) {
      List<Viagem> viagensB = [
        Viagem(
            Cidade("Palmas", "Tocantins"),
            Cidade("Porto Alegre", "Rio grande do Sul"),
            "Boinh456",
            DateTime.now(),
            DateTime.now(),
            2400),
        Viagem(
            Cidade("Porto Nacional", "Tocantins"),
            Cidade("São Paulo", "São Paulo"),
            "Boinh4569",
            DateTime.now(),
            DateTime.now(),
            3000),
        Viagem(Cidade("Manaus", "Amazonas"), Cidade("Palmas", "Palmas"),
            "Boinh4565", DateTime.now(), DateTime.now(), 3989),
        Viagem(Cidade("Porto", "Portugual"), Cidade("São Paulo", "São Paulo"),
            "Boinh4566", DateTime.now(), DateTime.now(), 4555),
      ];
      listagem = viagensB;
    }
    return listagem;
  }
}
