import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              botao(nota: 1, cor: Colors.lightGreenAccent),
              botao(nota: 2, cor: Colors.lightBlueAccent),
              botao(nota: 3, cor: Colors.yellowAccent),
              botao(nota: 4, cor: Colors.red),
              botao(nota: 5, cor: Colors.grey),
              botao(nota: 6, cor: Colors.purple),
              botao(nota: 7, cor: Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}

Widget botao({int nota, Color cor}) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(backgroundColor: cor),
      child: null,
      onPressed: () {
        print('tocando');
        final player = AudioCache();
        player.play('nota$nota.wav');
      },
    ),
  );
}
