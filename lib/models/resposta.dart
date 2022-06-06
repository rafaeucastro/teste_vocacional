import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  Resposta(this.texto, this.quandoSelecionado, this.item);

  final String texto, item;
  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(13),
              alignment: Alignment.center,
              child: Text(
                // '$item) $texto',
                '     $texto',
                style: const TextStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    color: Color.fromARGB(255, 89, 50, 45),
                    fontWeight: FontWeight.w500),
              ),
            ),
            onPressed: quandoSelecionado,
          ),
          Container(
            alignment: Alignment.center,
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 124, 115, 207),
            ),
            child: TextButton(
              onPressed: quandoSelecionado,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
