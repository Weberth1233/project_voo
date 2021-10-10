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
    String aviao = companhiaViagem.aviao;
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              title: Text('VOOS', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('Informações sobre o voo'),
              trailing: Icon(Icons.favorite_outline),
            ),
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
            Divider(),
            Row(
              children: [
                const Icon(Icons.map),
                Text(
                  'Destino:' + companhiaViagem.destino.nome,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.my_location),
                Text(
                  'Origem:' + companhiaViagem.origem.nome,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.calendar_today),
                Text(
                  'Data inicial: ' + companhiaViagem.getFormatDateInicial(),
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.date_range),
                Text(
                  'Data final: ' + companhiaViagem.getFormatDateFinal(),
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  companhiaViagem.getCurrency(),
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
