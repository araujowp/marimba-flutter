import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              child: Text('tocar?'),
              onPressed: (){
                print('tocando');
                final player  = AudioCache();
                player.play('nota1.wav');
              },
            ),
          ),
        ),
      ),
    );
  }
}
