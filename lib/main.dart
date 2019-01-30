import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Mc());

class Mc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: McApp(),
    );
  }
}

class McApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<McApp> {
  void playSound() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('yash_audio.ogg');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MC App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Press the Floating Action button ;)"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: playSound,
        tooltip: 'Yash_MC',
        child: Icon(Icons.volume_up),
      ),
    );
  }
}
