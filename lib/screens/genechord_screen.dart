import 'package:flutter/material.dart';
import 'package:musicgenie/main.dart';
import 'package:flutter/widgets.dart';
import 'package:musicgenie/screens/videotutorials_screen.dart';
import 'package:lottie/lottie.dart';

class GeneChord extends StatefulWidget {
  @override
  _GeneChordState createState() => _GeneChordState();
}

class _GeneChordState extends State<GeneChord>{
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: musicWhite,
      appBar: AppBar(
        title: Text('Gene Chords'),
        backgroundColor: musicGreen,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 5),
          Image.asset('assets/images/helixtop.png'),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
            child: Text(
              "Given that E, B, C# minor and A are the chords using which most songs can be played, we have used them for defining correspondence between the DNA sequence obtained and the music.",
              textAlign: TextAlign.left,
              style: TextStyle(color: musicGrey, fontSize: 18),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  hint: Text('Please choose an instrument'),
                  value: _selectedLocation,
                  items: <String>['Piano', 'Guitar', 'Violin', 'Drums'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Image.asset('assets/images/chords.png'),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          color: musicGreen,
          textColor: Colors.white,
          child: Text('Video Tutorials'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VideoTutorial()),
            );
          },
        ),
      ),
    );
  }
}
