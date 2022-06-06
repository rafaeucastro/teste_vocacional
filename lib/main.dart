import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';
import 'resources/lista_de_perguntas_e_respostas.dart';
import 'resources/aux_function.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = -1;
  // var _perguntaSelecionada = 18;
  final _perguntas = Perguntas().perguntas;
  List<int> itens = [0, 0, 0, 0];
  List<int> _pontuacaoTotal = [];

  void _responder(String pontuacao) {
    if (temPerguntaSelecionada || _perguntaSelecionada == -1) {
      setState(() {
        _perguntaSelecionada++;

        switch (pontuacao) {
          case 'a':
            itens[0]++;
            break;
          case 'b':
            itens[1]++;
            break;
          case 'c':
            itens[2]++;
            break;
          case 'd':
            itens[3]++;
            break;
        } //fim do switch
      });

      //só para teste - APAGAR DEPOIS
      print('Itens: ${itens}');
      print('pergunta: $_perguntaSelecionada');
    }
    _pontuacaoTotal = maxValueList(itens);
  }

  void reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = -1;
      itens = [0, 0, 0, 0];
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada >= 0 &&
        _perguntaSelecionada < _perguntas.length;
  }

  //Sobrescrevendo a função build que vai valer para esse objeto
  @override
  Widget build(BuildContext context) {
    // List<Widget> botoesRespostas =
    //     respostas.map((txt) => Resposta(txt, _responder)).toList();

    // for (String textoResp in respostas) {
    //   botoesRespostas.add(Resposta(textoResp, _responder));
    // }
    const desenvolvedora =
        'Teste desenvolvido pela pedagoga Maria da Luz Calegari.'
        '\nRevista Veja. São Paulo: Abril, 11 nov. 2009, p. 158-63.';

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 241, 227),
        appBar: AppBar(
          title: const Text(
            'Teste Vocacional',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Rajdhani',
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 124, 115, 207),
        ),
        body: temPerguntaSelecionada || _perguntaSelecionada == -1
            ? Questionario(
                perguntaSelecionada: _perguntaSelecionada,
                perguntas: _perguntas,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, reiniciarQuestionario),
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          child: const Text(
            desenvolvedora,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
