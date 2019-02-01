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
  void playSoundMC() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('yash_audio.ogg');
    });
  }

  void playSoundBB() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('Yash_BB.ogg');
    });
  }

  void playSoundAN() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('Ajay_audio.mp4');
    });
  }

  void playSoundNJ() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('Anvay_ninda.ogg');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MC App"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                child: Text("Press me :)"),
                onPressed: playSoundMC,
              ),
              RaisedButton(
                child: Text("Press me too :)"),
                onPressed: playSoundBB,
              ),
              RaisedButton(
                child: Text("Njay Aath"),
                onPressed: playSoundAN,
              ),
              RaisedButton(
                child: Text("Ninda Janak"),
                onPressed: playSoundNJ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
