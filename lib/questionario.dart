import 'package:flutter/material.dart';
import 'models/questao.dart';
import 'models/resposta.dart';
import 'tela_inicial.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(String) quandoResponder;

  Questionario({
    required this.perguntaSelecionada,
    required this.perguntas,
    required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada >= 0 && perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    return temPerguntaSelecionada
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //minha pergunta
                  Questao(perguntas[perguntaSelecionada].cast()['texto']),
                  /*COLOCAR WIDGET AQUI DENTRO DA COLUNA*/
                  //meus botões de respostas
                  ...respostas
                      .map((resp) => Resposta(
                          resp['texto'].toString(),
                          () => quandoResponder(resp.cast()['item']),
                          resp['item'].toString()))
                      .toList(),
                ],
              ),
              Image.asset(
                'assets\\images\\menina-sentada-na-pilha-de-livros.png',
                alignment: Alignment.center,
                width: 125,
                height: 125,
                fit: BoxFit.cover,
              ),
            ],
          )
        : Inicio(() => quandoResponder('z'));
  }
}
