import 'package:flutter/material.dart';
import 'package:project_decolar/components/botom_component.dart';
import 'package:project_decolar/components/card_viagens_component.dart';
import 'package:project_decolar/models/companhia.dart';

class ViagemPage extends StatefulWidget {
  final Companhia comp;
  
  const ViagemPage({Key? key, required this.comp}) : super(key: key);

  @override
  _ViagemPageState createState() => _ViagemPageState();
}

class _ViagemPageState extends State<ViagemPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.comp.nome),
      ),
      bottomNavigationBar:BottomNavigator(),
      
      body: ListView.separated(itemBuilder: (ctx, i) => 
        CardViagens(companhiaViagem: widget.comp.viagens.elementAt(i)), padding: const EdgeInsets.all(10), separatorBuilder: (_, __) => const Divider(), 
        itemCount: widget.comp.viagens.length),
    );
  }
}
