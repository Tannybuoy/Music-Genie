import 'package:flutter/material.dart';
import 'package:musicgenie/main.dart';
import 'package:musicgenie/screens/videotutorials_screen.dart';
import 'package:musicgenie/screens/genechord_screen.dart';
import 'package:musicgenie/dialogs.dart';
import 'package:musicgenie/screens/flash_screen.dart';

class FinalVideo extends StatefulWidget {
  @override
  _FinalVideoState createState() => _FinalVideoState();
}

class _FinalVideoState extends State<FinalVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Video'),
        backgroundColor: musicGreen,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FlashCardsPage()),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: musicGreen, spreadRadius: 3),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Image.asset("assets/images/play100songs.jpg"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: musicOrange,
                          child: Icon(Icons.person, color: Colors.white,),
                        ),
                        SizedBox(width: 20.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Play 13 Pop Songs with 4 Chords", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0
                            ),),
                            SizedBox(height: 5.0,),
                            Row(
                              children: <Widget>[
                                Text("PianoVids"),
                                SizedBox(width: 5.0,),
                                Text("3.3M views"),
                                SizedBox(width: 5.0,),
                                Text("1 month ago"),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.more_vert, color: Colors.grey,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: musicYellow,
                  textColor: Colors.white,
                  child: Text("Download Gene Sheet"),
                  onPressed: () async {
                    final action = await Dialogs.yesAbortDialog(
                      context,
                      'Download Gene Music',
                      'Click Audio to download as mp3 file and Click Video to download along with the animation',
                    );
                    if (action == DialogAction.yes) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoTutorial(),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoTutorial(),
                        ),
                      );
                    }
                  },
                ),
                RaisedButton(
                  color: musicGreen,
                  textColor: Colors.white,
                  child: Text("Download DNA sequence"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GeneChord()),
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,0,50,0),
              child: Image.asset("assets/images/videodna.png", scale: 1.6),
            ),
            Image.asset("assets/images/helixtop.png"),
            SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}