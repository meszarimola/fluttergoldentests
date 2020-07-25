import 'package:basicdemo/music_randomizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget _getMusicRandomizer() {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Music'),
          backgroundColor: Colors.blueGrey,
        ),
        body: MusicRandomizer(),
      ),
    );
  }

  testWidgets('Music golden widget test', (WidgetTester tester) async {
    Widget testMusicRandomizer = _getMusicRandomizer();
    await tester.pumpWidget(testMusicRandomizer);
    await expectLater(
        find.byType(MusicRandomizer), matchesGoldenFile('musicGolden.png'));
  });

}