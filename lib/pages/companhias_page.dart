import 'package:flutter/material.dart';
import '../repositorys/../repositorys/companhias_repository.dart';
import '../components/companhias_component.dart';

class CompanhiaPage extends StatefulWidget {
  const CompanhiaPage({Key? key}) : super(key: key);

  @override
  _CompanhiaPageState createState() => _CompanhiaPageState();
}

class _CompanhiaPageState extends State<CompanhiaPage> {
  final tabela = CompanhiaRepository.tabela;
  @override
  Widget build(BuildContext context) {
    return Material(

      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (ctx, i) => CompanhiaTile(tabela.elementAt(i)),
                padding: const EdgeInsets.all(10),
                separatorBuilder: (_, __) => Divider(),
                itemCount: tabela.length),
          ),
        ],
      ),
    );
  }
}
