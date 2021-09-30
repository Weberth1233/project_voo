import 'package:flutter/material.dart';

class TextComponent extends StatefulWidget {
  TextComponent({Key? key});
  @override
  _TextComponenttState createState() => _TextComponenttState();
}

class _TextComponenttState extends State<TextComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.person),
              hintText: 'Informe o nome'),
        )
      ],
    );
  }
}
