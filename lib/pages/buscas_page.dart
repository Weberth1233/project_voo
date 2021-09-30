import 'package:flutter/material.dart';
import 'package:project_decolar/components/card_viagens_component.dart';
import 'package:project_decolar/components/textfield_component.dart';
import 'package:project_decolar/controllers/viagens_controller.dart';
import 'package:project_decolar/models/viagens.dart';

class BuscasPage extends StatefulWidget {
  const BuscasPage({Key? key}) : super(key: key);

  @override
  _BuscasPageState createState() => _BuscasPageState();
}

class _BuscasPageState extends State<BuscasPage> {
  List<Viagem> retorno = [];
  final TextEditingController _controladororigem = TextEditingController();
  final TextEditingController _controladordestino = TextEditingController();
  final TextEditingController _controladorvalor = TextEditingController();

  String origem = "";
  String destino = "";
  double valor = 0.0;

  buscandoCidade() {
    setState(() {
      origem = _controladororigem.text;
      destino = _controladordestino.text;
      try {
        valor = double.parse(_controladorvalor.text);
      } on FormatException {
        valor = 0.0;
      }

      retorno = ViagensController().buscarPorCidade(origem, destino, valor);
    });
    print(retorno);
  }

  @override
  Widget build(BuildContext context) {
    final result = retorno.isEmpty == true
        ? const Text('Não foi realizado nenhuma busca')
        : ListView.builder(
            itemBuilder: (context, i) => CardViagens(
                  companhiaViagem: retorno.elementAt(i),
                ),
            padding: const EdgeInsets.all(10),
            itemCount: retorno.length);

    return Scaffold(
        body: Column(
      children: [
        Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 20, left: 10),
            child: Column(
              children: [
                TextFieldComp(
                    label: "Origem",
                    myController: _controladororigem,
                    type: TextInputType.text,
                    icone: const Icon(Icons.my_location)),
                TextFieldComp(
                  label: "Destino",
                  myController: _controladordestino,
                  icone: const Icon(Icons.map),
                  type: TextInputType.text,
                ),
                TextFieldComp(
                  label: "Valor Máximo:",
                  myController: _controladorvalor,
                  icone: const Icon(Icons.paid),
                  type: TextInputType.number,
                ),
                Padding(padding: const EdgeInsets.only(top: 10)),
                RaisedButton(
                  color: Colors.purple,
                  textColor: Colors.white,
                  child: Text('Buscar'),
                  onPressed: buscandoCidade,
                ),
              ],
            )),
        Padding(padding: const EdgeInsets.only(top: 10)),
        Expanded(
          child: Container(
            child: result,
          ),
        )
      ],
    ));
  }
}
