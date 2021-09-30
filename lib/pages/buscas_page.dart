import 'package:flutter/material.dart';
import 'package:project_decolar/components/botom_component.dart';
import 'package:project_decolar/components/card_viagens_component.dart';

class BuscasPage extends StatefulWidget {
  
  const BuscasPage({Key? key}) : super(key: key);

  @override
  _BuscasPageState createState() => _BuscasPageState();
}

class _BuscasPageState extends State<BuscasPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscas"),
      ),
      bottomNavigationBar:BottomNavigator(),
      
      body: Center(
        child: Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: const Text('AB'),
          ),
          label: const Text('Aaron Burr'),
        ),
      )
    );

  }
}
