import 'package:flutter/material.dart';
import '../models/companhia.dart';
import '../components/info_companhias_component.dart';

class DetalheCompanhiaPage extends StatefulWidget {
  final Companhia comp;

  const DetalheCompanhiaPage({Key? key, required this.comp}) : super(key: key);

  @override
  _DetalheCompanhiaPageState createState() => _DetalheCompanhiaPageState();
}

class _DetalheCompanhiaPageState extends State<DetalheCompanhiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.comp.nome),
        
      ),
      body: Center(
        child: InfoCompanhia(
          compInfo: widget.comp,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
