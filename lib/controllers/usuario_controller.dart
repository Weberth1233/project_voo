import 'package:project_decolar/repositorys/usuario_repository.dart';

class UsuarioController {
  autenticacao(String email, String senha) {
    if (UsuarioRepository().usu.email == email &&
        UsuarioRepository().usu.senha == senha) {
      return true;
    }
    return false;
  }
}
