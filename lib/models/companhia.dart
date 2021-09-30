import 'package:project_decolar/models/viagens.dart';

class Companhia {
  String _nome;
  String _url;
  String _site;
  List<Viagem> _viagens = [];

  Companhia(this._nome, this._url, this._site, this._viagens);

  set nome(String nome) {
    _nome = nome;
  }

  String get nome => _nome;

  set url(String url) {
    _url = url;
  }

  String get url => _url;

  set site(String site) {
    _site = site;
  }

  String get site => _site;

  set viagens(List<Viagem> viagens) {
    _viagens = viagens;
  }

  List<Viagem> get viagens => _viagens;
}
