class Aeroporto {
  String _nome;
  String _endereco;
  double _latitude;
  double _longitude;

  Aeroporto(this._nome, this._endereco, this._latitude, this._longitude);

  set nome(String nome) {
    _nome = nome;
  }

  String get nome => _nome;

  set endereco(String endereco) {
    _endereco = endereco;
  }

  String get endereco => _endereco;

  set latitude(double latitude) {
    _latitude = latitude;
  }

  double get latitude => _latitude;

  set longitude(double longitude) {
    _longitude = longitude;
  }

  double get longitude => _longitude;
}
