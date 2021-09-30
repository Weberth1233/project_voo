import 'package:flutter/material.dart';
import 'package:project_decolar/components/chip_component.dart';

class BuscasPage extends StatefulWidget {
  
  const BuscasPage({Key? key}) : super(key: key);

  @override
  _BuscasPageState createState() => _BuscasPageState();
}

class _BuscasPageState extends State<BuscasPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                ChipComponent(texto: 'Cidades'),
                ChipComponent(texto: 'Horário'),
                ChipComponent(texto: 'Data'),
                ChipComponent(texto: "Valor"),
              ],
            )));

  }
}
