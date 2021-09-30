import 'package:project_decolar/repositorys/viagens_repository.dart';

import '../models/companhia.dart';

class CompanhiaRepository {

  static List<Companhia> tabela = [
    Companhia('AZUL', 'https://apps.voeazul.com.br/TudoAzulRenew/Content/img/logo-tudoazul-white@2x.png', 
    'www.azulcargo.com.br/', ViagemRepository().criarViagens(1)),
    Companhia('GOL', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/LogoGOL-Pref-FundoClaro-RGB.svg/1200px-LogoGOL-Pref-FundoClaro-RGB.svg.png', 
    'www.gol.com.br/', ViagemRepository().criarViagens(2)),
    /*Companhia('LATAM', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Latam-logo_-v_%28Indigo%29.svg/2670px-Latam-logo_-v_%28Indigo%29.svg.png', 'https://www.latamairlines.com/br/pt'),
    Companhia('Brava Linhas Aéreas', 'https://upload.wikimedia.org/wikipedia/commons/e/eb/Brava_la_logo.jpg', 'voebrava.com.br'),
    Companhia('Rio Madeira Aerotáxi', 'https://i.pinimg.com/474x/9c/52/50/9c5250a135b1a0b7f1327396027f9bb3.jpg', 'www.voerima.com'),
    */
  ];
}
