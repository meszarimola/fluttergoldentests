import 'package:flutter/material.dart';
import 'music_randomizer.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Music'),
        backgroundColor: Colors.blueGrey,
      ),
      body: MusicRandomizer(),
    ),
  ));
}