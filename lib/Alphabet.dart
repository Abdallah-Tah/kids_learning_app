import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Alphabeties extends StatefulWidget {
  @override
  _AlphabetiesState createState() => _AlphabetiesState();
}

class _AlphabetiesState extends State<Alphabeties> {
  final AlphabetList = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alphabets'),
      ),
      body: ListView.builder(
        itemCount: AlphabetList.length,
        itemBuilder: (context, index) {
          return Center(
            child: Column(children: <Widget>[
              const SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.purple,
                ),
                child: ElevatedButton(
                  child: Text(AlphabetList[index],
                      style: const TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onPressed: () {
                    final player = AudioPlayer();
                    player
                        .play(AssetSource("sounds/${AlphabetList[index]}.wav"));
                  },
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
