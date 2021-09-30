class Cidade {
  String _nome;
  String _estado;

  Cidade(this._nome, this._estado);

  set nome(String nome) {
    _nome = nome;
  }

  String get nome => _nome;

  set estado(String estado) {
    _estado = _estado;
  }

  String get estado => _estado;
}
