import 'package:flutter/material.dart';
import '../models/companhia.dart';

class InfoCompanhia extends StatefulWidget {
  final Companhia compInfo;

  const InfoCompanhia({Key? key, required this.compInfo}) : super(key: key);

  @override
  _InfoCompanhiaState createState() => _InfoCompanhiaState();
}

class _InfoCompanhiaState extends State<InfoCompanhia> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 400,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.airplanemode_active, size: 40),
                title: Text('Companhia', style: TextStyle(color: Colors.black, fontSize: 25)),
              ),
              Container(
                height: 150.0,
                child: Image.network(
                  widget.compInfo.url,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: Text(widget.compInfo.nome),
              ),
              Container(
                padding: const EdgeInsets.only(left: 12.0),
                alignment: Alignment.centerLeft,
                child: Text(widget.compInfo.site),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
