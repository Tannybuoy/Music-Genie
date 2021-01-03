import 'package:flutter/material.dart';
import 'package:musicgenie/main.dart';
import 'dart:async';
import 'package:musicgenie/screens/musicplayer_screen.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  //anim
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 10),
          () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => MusicPlayer()),
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Container(
              color: musicWhite,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
          SizedBox(height: 100),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300.0,
                  child: ListView(
                    children: [
                      Lottie.network(
                        'https://assets10.lottiefiles.com/packages/lf20_J35ewd.json',
                        repeat: true,
                        animate: true,
                        height: 200,
                        width: 300,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Generating Gene Music...',
                  style: TextStyle(color: musicGreen, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Did You Know? Two humans typically share around 99.9% of the same genetic material.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: musicGreen, fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
