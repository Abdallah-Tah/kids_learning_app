import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Colours extends StatefulWidget {
  @override
  _ColoursState createState() => _ColoursState();
}

class _ColoursState extends State<Colours> {
  final ColorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.cyan,
    Colors.deepPurple,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: ColorList.length,
        itemBuilder: (context, index) => Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: ColorList[index],
                ),
                child: Material(
                  elevation: 4.0,
                  borderRadius: BorderRadius.circular(5.0),
                  color: ColorList[index], //CHANGED
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
