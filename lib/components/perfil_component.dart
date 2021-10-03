import 'package:flutter/material.dart';
import 'package:project_decolar/models/usuario.dart';

class PerfilComponent extends StatelessWidget {
  //Para imprimir de um determinado companhia vai ser preciso passar uma companhia no local da viagem como objeto
  //Criando um for e recebendo dentro de um objeto do tipo viagem os valores recebidos na listagem de companhia.viagens

  final Usuario usuario;

  const PerfilComponent({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: const NetworkImage(
                          'https://th.bing.com/th/id/R.2e81f97ed9247fbc9116fa29b854628e?rik=w6kD4QYTOPSOcA&pid=ImgRaw&r=0'),
                      height: 50,
                      width: 50,
                      child: InkWell(
                        onTap: () {},
                      ),
                      fit: BoxFit.cover,
                    ),
                    Text(
                      usuario.nome,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.person),
                    Text(
                      usuario.nome,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.email),
                    Text(
                      usuario.email,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
