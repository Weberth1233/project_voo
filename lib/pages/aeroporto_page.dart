import 'package:flutter/material.dart';
import 'package:project_decolar/repositorys/aeroporto_repository.dart';
import '../components/aeroporto_component.dart';

class AeroportoPage extends StatefulWidget {
  AeroportoPage({Key? key}) : super(key: key);

  @override
  _AeroportoCompanhiaPageState createState() => _AeroportoCompanhiaPageState();
}

class _AeroportoCompanhiaPageState extends State<AeroportoPage> {
  final tabela = AeroportoRepository.tabela;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, i) => AeroportoComponent(
          aeroporto: tabela.elementAt(i),
        ),
        padding: EdgeInsets.all(10),
        separatorBuilder: (_, __) => Divider(),
        itemCount: tabela.length); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
