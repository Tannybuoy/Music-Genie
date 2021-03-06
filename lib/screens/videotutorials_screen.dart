import 'package:flutter/material.dart';
import 'package:musicgenie/main.dart';
import 'package:musicgenie/screens/finalvideo.dart';
import 'package:musicgenie/screens/flash_screen.dart';

class VideoTutorial extends StatefulWidget {
  @override
  _VideoTutorialState createState() => _VideoTutorialState();
}

class _VideoTutorialState extends State<VideoTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Tutorials'),
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
            SizedBox(height: 5.0,),
            Image.asset("assets/images/helixtop.png"),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5.0),
              child: Container(
                height: 30.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text("Keyboard Tutorials", style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                        ),),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text("4 Chord Songs", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        ),),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text("Best Piano", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        ),),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text("Mixed Instrumentals", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        ),),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text("Gene Music", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        ),),
                      ),
                    ),

                    SizedBox(width: 20.0,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0,),
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
                  Image.asset("assets/images/piano1.jfif"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: musicYellow,
                          child: Icon(Icons.person, color: Colors.white,),
                        ),
                        SizedBox(width: 20.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Beautiful Piano Chords!", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0
                            ),),
                            SizedBox(height: 5.0,),
                            Row(
                              children: <Widget>[
                                Text("Paul Davids"),
                                SizedBox(width: 5.0,),
                                Text("2M views"),
                                SizedBox(width: 5.0,),
                                Text("6 months ago"),
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

            SizedBox(height: 25.0,),

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
                  Image.asset("assets/images/piano2.jfif"),
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
                            Text("Learn To Play: Fast Piano", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0
                            ),),
                            SizedBox(height: 5.0,),
                            Row(
                              children: <Widget>[
                                Text("Voice Studio"),
                                SizedBox(width: 5.0,),
                                Text("150k views"),
                                SizedBox(width: 5.0,),
                                Text("2 years ago"),
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

            SizedBox(height: 25.0,),

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
                  Image.asset("assets/images/piano3.jfif"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: musicBlue,
                          child: Icon(Icons.person, color: Colors.white,),
                        ),
                        SizedBox(width: 20.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Start playing Keyboard: Beginner", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0
                            ),),
                            SizedBox(height: 5.0,),
                            Row(
                              children: <Widget>[
                                Text("OurWorshipSound"),
                                SizedBox(width: 5.0,),
                                Text("20k views"),
                                SizedBox(width: 5.0,),
                                Text("1 year ago"),
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
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          color: musicGreen,
          textColor: Colors.white,
          child: Text('Watch Demo Video'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FinalVideo()),
            );
          },
        ),
      ),
    );
  }
}