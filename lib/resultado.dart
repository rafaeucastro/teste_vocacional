import 'package:flutter/material.dart';
import 'suggestions.dart';

class Resultado extends StatelessWidget {
  final List<int> pontuacaoTotal;
  // final _profissoes = profissoes;
  void Function() reiniciarQuestionario;

  Resultado(this.pontuacaoTotal, this.reiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 241, 227),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: 20,
          //   child: Image.network(
          //     'https://img.icons8.com/metro/52/000000/leaf.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          const Text("Sugestões",
              style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(255, 89, 50, 45),
                fontFamily: 'Playlist',
              )),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 425,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                // color: Colors.amber,
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      //color: Color.fromARGB(255, 243, 227, 212),
                      child: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 89, 50, 45),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        "Minha Vocação é",
                        style:
                            TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
                      ),
                    ),
                  ],
                ),
              ),
              Suggestions(pontuacaoTotal),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 89, 50, 45),
              ),
            ),
            onPressed: reiniciarQuestionario,
            child: const Text(
              'Reiniciar Questionário',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Montserrat', color: Colors.white),
            ),
          ),
          //This widget will set my overall column to fill all the screen
          const SizedBox(width: double.infinity)
        ],
      ),
    );
  }
}
