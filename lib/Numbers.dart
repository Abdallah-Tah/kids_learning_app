import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Numbers extends StatefulWidget {
  const Numbers({Key? key}) : super(key: key);

  @override
  _NumbersState createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  final NumberList = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: NumberList.length,
        itemBuilder: (context, index) => Center(
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
              child: Text(NumberList[index],
                  style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource("numbers/${NumberList[index]}.mp3"));
              },
            ),
          ),
        ])),
      ),
    );
  }
}
