import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Início")),
        BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Busca")),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Perfil")),
      ],
    );
  }
}
