import 'package:project_decolar/models/cidades.dart';

import '../models/viagens.dart';

class ViagemRepository {

  criarViagens(int value){
    List<Viagem>listagem = [];
    
    if(value == 1){
      List<Viagem> viagensA = [
        Viagem(Cidade("Palmas","Tocantins"), Cidade("São Paulo","São Paulo"),"Boinh456",DateTime.now(), DateTime.now()),
        Viagem(Cidade("São Paulo","São Paulo"), Cidade("Palmas","Palmas"),"Boinh4465", DateTime.now(), DateTime.now()),
        Viagem(Cidade("Porto","Portugual"), Cidade("Rio de Janeiro","Rio de Janeiro"),"Boinh456",DateTime.now(), DateTime.now()),
      ];
      listagem = viagensA;
    }
    else if(value == 2){
      List<Viagem> viagensB = [
        Viagem(Cidade("Porto Nacional","Tocantins"), Cidade("São Paulo","São Paulo"),"Boinh4569",DateTime.now(), DateTime.now()),
        Viagem(Cidade("Manaus","Amazonas"), Cidade("Palmas","Palmas"),"Boinh4565", DateTime.now(), DateTime.now()),
        Viagem(Cidade("Porto","Portugual"), Cidade("São Paulo","São Paulo"),"Boinh4566",DateTime.now(), DateTime.now()),
      ];
       listagem = viagensB;
    }
    return listagem;
  }

  

  
}
