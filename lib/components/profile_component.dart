import 'package:flutter/material.dart';

class ProfileComponent extends StatelessWidget {

  const ProfileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          height: 130,
          padding: const EdgeInsets.all(15.0),
          //Definir cor de fundo do container
          decoration: const BoxDecoration(color: Colors.indigo),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "https://4.bp.blogspot.com/-_l1CO_iPW7k/WSSCseY5OII/AAAAAAAAHBQ/pCIAu4atrAEC7hkz2gshL0b5psQJ11H8ACLcB/s1600/CYMERA_20170415_171750.png",
                    width: 50,
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        "Hello Catarina",
                        style: TextStyle(color: Colors.grey, fontSize: 22),
                      ),
                      Text(
                        "catarinalima@unitins.br",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const Text("Olá")
      ],
    );
  }
}
