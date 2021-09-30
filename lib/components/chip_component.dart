import 'package:flutter/material.dart';

class ChipComponent extends StatefulWidget {
  final String texto;

  ChipComponent({Key? key, required this.texto});
  @override
  _ChipComponentState createState() => _ChipComponentState();
}

class _ChipComponentState extends State<ChipComponent> {
  bool clique = false;
  
  void cliquei(){
    setState(() {
      clique = !clique;
    }); 
  }

  @override
  Widget build(BuildContext context) {
    final recebe = clique == true ? const Text("Olá mundo") : const Text('Não clicado');

    return Column(
      children: [
        ActionChip(label: Text(clique.toString()), 
        onPressed:cliquei,
        ),
        Container(
          child: recebe,
        )
      ],
    );

  }
}
