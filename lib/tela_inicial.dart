import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  void Function() responder;

  final explicacao =
      '     O teste vocacional é um instrumento que auxilia os indivíduos a reconhecerem seus atributos,'
      ' a fim de encontrar uma profissão compatível a eles. A palavra vocacional vem de “vocação”, que é uma disposição '
      'natural e espontânea que orienta uma pessoa no sentido de uma atividade.';

  Inicio(this.responder);

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          margin: EdgeInsets.all(10),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              explicacao,
              style: const TextStyle(fontSize: 20, fontFamily: 'OpenSans'),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: responder,
              child: const Text(
                'Começar',
                style: TextStyle(fontSize: 25, fontFamily: 'Montserrat'),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 89, 50, 45)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(),
      ],
    );
  }
}
