import 'package:flutter/material.dart';
import 'package:musicgenie/main.dart';
import 'package:musicgenie/screens/musicplayer_screen.dart';


class Visualiser extends StatefulWidget {
  @override
  _VisualiserState createState() => _VisualiserState();
}

class _VisualiserState extends State<Visualiser> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: musicWhite,
      appBar: AppBar(
        title: Text('DNA Visualiser'),
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
              "Enter sequence for Strand1. Since DNA is formed by complementary strands, the Strand2 gets fixed too.",
              textAlign: TextAlign.left,
              style: TextStyle(color: musicGrey, fontSize: 20),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: ()=> _controller.clear(),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Text(
                    'DNA',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: musicWhite,
                    ),
                  ),
                  onPressed: () {},
                  color: musicGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ],
            ),
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: Container(
                  height: 300.0,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/tgcatgca.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          color: musicGreen,
          textColor: Colors.white,
          child: Text('Music Player'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MusicPlayer()),
            );
          },
        ),
      ),
    );
  }
}
