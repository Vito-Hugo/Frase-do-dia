import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ht_text_title.dart';
import 'package:flutter_application_1/theme/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases do dia',
      home: FrasesDoDia(),
      theme: CustomThemeData.light(),
      darkTheme: CustomThemeData.dark(),
      themeMode: ThemeMode. dark,
    );
  }
}

class FrasesDoDia extends StatefulWidget {
  @override
  _FrasesDoDiaState createState() => _FrasesDoDiaState();
}

class _FrasesDoDiaState extends State<FrasesDoDia> {
  List<String> _frases = [
    'A persistência é o caminho do êxito.',
    'A maior glória em viver não está em nunca cair, mas em nos levantarmos cada vez que caímos.',
    'O sucesso é ir de fracasso em fracasso sem perder o entusiasmo.',
    'Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos',
    'Não é a mais forte espécie que sobrevive, nem a mais inteligente, mas a que melhor se adapta às mudanças.',
    'Só existem dois dias do ano em que você não pode fazer nada: um se chama ontem e outro amanhã.',
    'Que o dia comece bem e termine ainda melhor.',
    'Pra hoje: sorrisos bobos, uma mente tranquila e um coração cheio de paz.',
    'Às vezes as coisas demoram, mas acontecem. O importante é saber esperar e não perder a fé!',
    'Imagine uma nova história para a sua vida e acredite nela.',
    'Nem todos os dias são bons, mas há algo bom em cada dia.',
    'Sorria! Deus acaba de te dar um novo dia e coisas extraordinárias podem acontecer se você acreditar.',
    'Levanta, sacode a poeira e dá a volta por cima.',

  ];

  String _fraseDoDia = '';

  void _gerarFrase() {
    int numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseDoDia = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HPTextTitle(text: "Frase do dia", size: HPSizeTitle.large ),
            Text(
              _fraseDoDia,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _gerarFrase,
              child: Text('Nova frase'),
            ),
          ],
        ),
      ),
    );
  }
}

