import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Mc());

class Mc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
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
      player.play('yash_audio.mp3');
    });
  }

  void playSoundBB() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('Yash_BB.mp3');
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
      player.play('Anvay_ninda.mp3');
    });
  }

  void playSoundGF() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('Yash_GF.mp3');
    });
  }

  void playSoundSaiyan() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('Yash_saiyan.mp3');
    });
  }

  void changeScreen() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new SecondScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MC App"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              /*   children: Text("An empty Drawer"),
              decoration: BoxDecoration(
                color: Colors.green,
                
              ),*/
              child: Image.asset('assets/icon/yash_face-removebg.png'),
            ),
            ListTile(
              title: Text("About us "),
              onTap: changeScreen,
            ),
            ListTile(
              enabled: true,
              title: Text("Made with ♥ by"),
              subtitle: Text("bLaCkLiGhT"),
            ),
          ],
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        crossAxisCount: 2,
        children: <Widget>[
          RaisedButton(
            child: Text("Press me :)"),
            color: Colors.lightBlue,
            highlightElevation: 10,
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
            child: Text("Kadi Ninda"),
            onPressed: playSoundNJ,
          ),
          RaisedButton(
            child: Text("Ga*d Fulao"),
            onPressed: playSoundGF,
          ),
          RaisedButton(
            child: Text("Saiyan"),
            onPressed: playSoundSaiyan,
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Know us Better"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "We are just a bunch of enthusiastic coders,programmers and meme developers who united for a common cause of saving the human race by developing all sorts of potentially useless apps.\n\n\n We also make some usefull apps but they mostly go unnoticed...\n\nDo you know about any of them?",
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
          Text(
            "\n\n\n\n\n\n\nMade with ♥ by bLaCkLiGhT",
            style: TextStyle(fontSize: 10.0),
            textAlign: TextAlign.end,
          ),
        ],
      )),
    );
  }
}
