import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_decolar/components/profile_component.dart';
import 'package:project_decolar/pages/buscas_page.dart';
import 'package:project_decolar/pages/companhias_page.dart';
import 'package:project_decolar/pages/inicio_page.dart';
import 'package:project_decolar/pages/perfil_page.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int currentIndex = 0;
  List screens = [
    MyHomePage(title: 'Your Travel'),
    const BuscasPage(),
    const PerfilPage(),
  ];

  updateIndex(int value) {
    print(value);
    setState(() {
      currentIndex = value;

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screens[currentIndex]),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: updateIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Início")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Buscas")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Perfil")),
        ],
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.indigo);
  }
}
