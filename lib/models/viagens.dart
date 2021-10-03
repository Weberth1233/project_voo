import 'package:intl/intl.dart';

import 'cidades.dart';

class Viagem {
  Cidade _origem;
  Cidade _destino;
  String _aviao;
  DateTime _dataInicial;
  DateTime _dataFinal;
  double _valor;

  Viagem(this._origem, this._destino, this._aviao, this._dataInicial,
      this._dataFinal, this._valor);

  set origem(Cidade origem) {
    _origem = origem;
  }

  Cidade get origem => _origem;

  set destino(Cidade destino) {
    _destino = destino;
  }

  Cidade get destino => _destino;

  set aviao(String aviao) {
    _aviao = aviao;
  }

  String get aviao => _aviao;

  set dataInicial(DateTime dataInicial) {
    _dataInicial = dataInicial;
  }

  DateTime get dataInicial => _dataInicial;

  set dataFinal(DateTime dataFinal) {
    _dataFinal = dataFinal;
  }

  DateTime get dataFinal => _dataFinal;

  set valor(double valor) {
    _valor = valor;
  }

  double get valor => _valor;

  String getFormatDateInicial() {
    DateFormat data = DateFormat('dd/MM/yyyy HH:mm');
    return data.format(dataInicial);
  }

  String getFormatDateFinal() {
    DateFormat data = DateFormat('dd/MM/yyyy HH:mm');
    return data.format(dataFinal);
  }

  String getCurrency() {
    NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return formatter.format(valor);
  }
}
