import 'package:flutter/material.dart';
import 'package:project_decolar/pages/viagens_page.dart';
import '../models/companhia.dart';

class CompanhiaTile extends StatelessWidget {
  final Companhia companhia;

  const CompanhiaTile(this.companhia);

  @override
  Widget build(BuildContext context) {
    final avatar = companhia.url == null || 
    companhia.url.isEmpty ? CircleAvatar(child: Icon(Icons.person)) : 
    CircleAvatar(backgroundImage: NetworkImage(companhia.url));
    
    return ListTile(
      leading: avatar,
      title: Text(
        companhia.nome,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(companhia.site),
      trailing: Container(
        width: 50,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_forward_outlined),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViagemPage(comp: companhia,)));
              },
            ),
            /*IconButton(
              icon: Icon(Icons.edit),
              color: Colors.green,
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.delete), color: Colors.red, onPressed: () {
            }),*/
          ],
        ),
      ),
    );
  }
}
