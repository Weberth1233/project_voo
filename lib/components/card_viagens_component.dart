import 'package:flutter/material.dart';
import 'package:project_decolar/models/viagens.dart';

class CardViagens extends StatelessWidget {
  //Para imprimir de um determinado companhia vai ser preciso passar uma companhia no local da viagem como objeto
  //Criando um for e recebendo dentro de um objeto do tipo viagem os valores recebidos na listagem de companhia.viagens

  final Viagem companhiaViagem;

  const CardViagens({Key? key, required this.companhiaViagem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/06/23/11/07/transport-5332224_1280.jpg'),
                    height: 240,
                    child: InkWell(
                      onTap: () {},
                    ),
                    fit: BoxFit.cover,
                  ),
                  Text(
                    companhiaViagem.aviao,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Text(
                'Destino:' + companhiaViagem.destino.nome,
                style: const TextStyle(fontSize: 12),
              ),
              Text(
                'Origem:' + companhiaViagem.origem.nome,
                style: const TextStyle(fontSize: 12),
              ),
              Text(
                'Data inicial:' + companhiaViagem.dataInicial.toString(),
                style: const TextStyle(fontSize: 12),
              ),
              Text(
                'Data final:' + companhiaViagem.dataFinal.toString(),
                style: const TextStyle(fontSize: 12),
              ),
              Text(
                'Valor:' + companhiaViagem.valor.toString(),
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
