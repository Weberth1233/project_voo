class Usuario {
  String _nome;
  String _email;
  String _senha;

  Usuario(this._nome, this._email, this._senha);

  set nome(String nome) {
    _nome = nome;
  }

  String get nome => _nome;

  set email(String email) {
    _email = email;
  }

  String get email => _email;

  set senha(String senha) {
    _senha = senha;
  }

  String get senha => _senha;
}
