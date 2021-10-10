import 'package:flutter/material.dart';
import 'package:project_decolar/pages/map_page.dart';
import '../models/aeroporto.dart';

class AeroportoComponent extends StatefulWidget {
  final Aeroporto aeroporto;

  AeroportoComponent({Key? key, required this.aeroporto});
  @override
  _AeroportoComponentState createState() => _AeroportoComponentState();
}

class _AeroportoComponentState extends State<AeroportoComponent> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Icon(Icons.local_airport, color: Colors.indigo),
      title: Text(
        widget.aeroporto.nome,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),

      subtitle: Text(widget.aeroporto.endereco),
      trailing: Container(

        width: 50,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.map),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MapPage(aeroporto: widget.aeroporto,)));
              },
            ),
            /*IconButton(
              icon: Icon(Icons.edit),
              color: Colors.green,
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.delete), color: Colors.red, onPressed: () {}),*/
          ],
        ),
      ),
    );
  }
}
