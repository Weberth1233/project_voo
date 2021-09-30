import 'package:flutter/material.dart';

class TextFieldComp extends StatefulWidget {
  final TextEditingController myController;
  final String label;
  final TextInputType type;
  final Icon icone;

  TextFieldComp(
      {Key? key,
      required this.myController,
      required this.label,
      required this.type,
      required this.icone});

  @override
  _TextFieldCompState createState() => _TextFieldCompState();
}

class _TextFieldCompState extends State<TextFieldComp> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.type,
      decoration: InputDecoration(
        icon: widget.icone,
        labelText: widget.label,
        labelStyle: TextStyle(color: Color(0xFF6200EE)),
      ),
      controller: widget.myController,
    );
  }
}
