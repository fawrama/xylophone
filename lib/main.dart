import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const homePage());
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Expanded build_buttons({required int note, required Color color}) {
    final player = AudioCache();
    return Expanded(
      child: FlatButton(
        onPressed: () {
          player.play('note$note.wav');
        },
        color: color,
        child: SizedBox(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                build_buttons(note: 1, color: Colors.red),
                build_buttons(note: 5, color: Colors.orange),
                build_buttons(note: 6, color: Colors.yellow),
                build_buttons(note: 3, color: Colors.green),
                build_buttons(note: 4, color: Colors.lightGreen),
                build_buttons(note: 2, color: Colors.blue),
                build_buttons(note: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
