import 'package:flutter/material.dart';

// final List<String> _profissoes = [
//   ' • Esportistas\n • Anestesista\n • Artista plástico\n • '
//       'Ator\n • Chef de cozinha\n • Cineasta\n • Cirurgião\n • Coreógrafo\n • Dançarino\n • Dermatologista\n • '
//       'Estilista\n • Fotógrafo\n • Guia de turismo\n • Instrutor de voo\n • '
//       'Jornalista\n • Médico clínico\n • Músico\n • Personal trainer\n • Piloto\n • Publicitário\n • Relações públicas\n • Roteirista.',
//   ' • Administrador de empresas\n • Advogado\n • Assistente social\n • Bibliotecário\n • Delegado\n • '
//       'Engenheiro\n • Mecânico/Químico\n • Juiz de direito\n • Policial\n • Promotor público.',
//   ' • Artista plástico\n • Dramaturgo\n • Educador\n • Escritor\n • Filósofo\n • Jornalista\n • Pedagogo\n • Professor\n • '
//       'Psicólogo\n • Sociólogo\n • Terapeuta ocupacional\n • Tradutor.',
//   ' • Analista de sistemas\n • Antropólogo\n • Arquiteto\n • Astrônomo\n • Criador de software\n • '
//       'Designer industrial\n • Economista\n • Engenheiro\n • Físico\n • Líder de uma corporação\n • Matemático\n • '
//       'Militar\n • Oceanógrafo\n • Pesquisador\n • Químico\n • Músico\n • Urbanista\n • Zoólogo.'
// ];

final List<List<String>> _profissoes = [
  [
    'Esportista',
    'Anestesista',
    'Artista plástico',
    'Ator',
    'Chef de cozinha',
    'Cineasta',
    'Cirurgião',
    'Coreógrafo',
    'Dançarino',
    'Dermatologista',
    'Estilista',
    'Fotógrafo',
    'Guia de turismo',
    'Instrutor de voo',
    'Jornalista',
    'Médico clínico',
    'Músico',
    'Personal trainer',
    'Piloto',
    'Publicitário',
    'Relações públicas',
    'Roteirista.',
  ],
  [
    'Administrador de empresas',
    'Advogado',
    'Assistente social',
    'Bibliotecário',
    'Delegado',
    'Engenheiro',
    'Mecânico/Químico',
    'Juiz de direito',
    'Policial',
    'Promotor público.',
  ],
  [
    'Artista plástico',
    'Dramaturgo',
    'Educador',
    'Escritor',
    'Filósofo',
    'Jornalista',
    'Pedagogo',
    'Professor',
    'Psicólogo',
    'Sociólogo',
    'Terapeuta ocupacional',
    'Tradutor.',
  ],
  [
    'Analista de sistemas',
    'Antropólogo',
    'Arquiteto',
    'Astrônomo',
    'Criador de software',
    'Designer industrial',
    'Economista',
    'Engenheiro',
    'Físico',
    'Líder de uma corporação',
    'Matemático',
    'Militar',
    'Oceanógrafo',
    'Pesquisador',
    'Químico',
    'Músico',
    'Urbanista',
    'Zoólogo.'
  ],
];

class Suggestions extends StatelessWidget {
  final List<int> pontuacaoTotal;

  const Suggestions(this.pontuacaoTotal, {Key? key}) : super(key: key);

  List<String> get textoResultado {
    if (pontuacaoTotal[1] == 0) {
      return _profissoes[0];
    } else if (pontuacaoTotal[1] == 1) {
      return _profissoes[1];
    } else if (pontuacaoTotal[1] == 2) {
      return _profissoes[2];
    } else {
      return _profissoes[3];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: SizedBox(
        height: 325,
        width: 425,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...textoResultado.map((occupation) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 89, 50, 45),
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          occupation,
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              color: Color.fromARGB(255, 89, 50, 45),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.restore_sharp,
                      color: Color.fromARGB(255, 89, 50, 45),
                      size: 40,
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
