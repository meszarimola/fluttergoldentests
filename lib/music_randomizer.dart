import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicRandomizer extends StatefulWidget {
  @override
  MusicState createState() => MusicState();
}

class MusicState extends State<MusicRandomizer> {
  String musicTitle = 'Techno';
  int selectedMusic = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Image.asset('images/music$selectedMusic.png'),
          FlatButton(
            onPressed: () {
              changeMusic();
            },
            child: Text(
              musicTitle,
              style: DefaultTextStyle
                  .of(context)
                  .style
                  .apply(fontSizeFactor: 2.0),),
          )
        ],
      ),
    );
  }

  void changeMusic() {
    setState(() {
      selectedMusic = Random().nextInt(4);
      switch (selectedMusic) {
        case 0: {
            musicTitle = 'Dance';
          }
          break;
        case 1: {
            musicTitle = 'Rock';
          }
          break;
        case 2: {
            musicTitle = 'Classical';
          }
          break;
        case 3: {
            musicTitle = 'Techno';
          }
          break;
        default: {
            musicTitle = 'Dance';
          }
          break;
      }
    });
  }
}