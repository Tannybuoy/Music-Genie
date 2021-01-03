import 'package:flutter/material.dart';
import 'package:musicgenie/main.dart';
import 'package:musicgenie/dialogs.dart';
import 'package:flutter/widgets.dart';
import 'package:musicgenie/screens/videotutorials_screen.dart';
import 'package:musicgenie/screens/genechord_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:share/share.dart';

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: musicWhite,
      appBar: AppBar(
        title: Text('Music Player'),
        backgroundColor: musicGreen,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 5),
          Image.asset('assets/images/helixtop.png'),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
            child: Text(
              "Genes and music are two heritable systems that underlie our life. Both of them are made of linear and quantized information. Explore the correspondence and metaphor between them by converting gene sequences to music sequences. Hopefully, gene music can capture and inspire appreciation of the diversity, mystery and beauty of life. ",
              textAlign: TextAlign.left,
              style: TextStyle(color: musicGrey, fontSize: 18),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 100.0,
            child: ListView(
              children: [
                Lottie.network(
                  'https://assets10.lottiefiles.com/datafiles/k8dQgGd6PgypQ3N/data.json',
                  repeat: true,
                  animate: true,
                  height: 100,
                  width: 200,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Image.asset('assets/images/musiccontrol.png'),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: musicYellow,
                textColor: Colors.white,
                child: Text("Download"),
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
              SizedBox(width: 15),
              RaisedButton(
                color: musicOrange,
                textColor: Colors.white,
                child: Text("Share"),
                onPressed: () {
                  Share.share("music GENiE is awesome!");
                },
              ),
              SizedBox(width: 15),
              RaisedButton(
                color: musicGreen,
                textColor: Colors.white,
                child: Text("Tutorial"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GeneChord()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
