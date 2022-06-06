import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao(this.texto);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(20),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28,
          fontFamily: 'OpenSans',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
