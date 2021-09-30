import 'package:flutter/material.dart';
import 'package:project_decolar/components/botom_component.dart';
import 'package:project_decolar/components/perfil_component.dart';
import 'package:project_decolar/repositorys/usuario_repository.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Perfil'),
        ),
        bottomNavigationBar: BottomNavigator(),
        body: PerfilComponent(
          usuario: UsuarioRepository().usu,
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
