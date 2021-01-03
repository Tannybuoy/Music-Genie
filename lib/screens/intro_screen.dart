import 'package:flutter/material.dart';
import 'package:musicgenie/main.dart';
import 'package:musicgenie/screens/visualiser_screen.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: musicWhite,
      appBar: AppBar(
        title: Text('Introduction'),
        backgroundColor: musicGreen,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 5),
          Image.asset('assets/images/helixtop.png'),
          SizedBox(height: 15),
          Text(
            "Adenine only pairs with Thymine",
            textAlign: TextAlign.left,
            style: TextStyle(color: musicGrey, fontSize: 20, decoration: TextDecoration.underline),
          ),
          SizedBox(height: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,5,20,0),
                child: Container(
                  height: 43.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/at.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            "Cytosine only pairs with Guanine",
            textAlign: TextAlign.left,
            style: TextStyle(color: musicGrey, fontSize: 20,decoration: TextDecoration.underline ),
          ),
          SizedBox(height: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,5,20,0),
                child: Container(
                  height: 43.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/cg.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            "Attempt to cross-pair will produce mismatch",
            textAlign: TextAlign.left,
            style: TextStyle(color: musicGrey, fontSize: 20, decoration: TextDecoration.underline),
          ),
          SizedBox(height: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,5,20,0),
                child: Container(
                  height:240.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/mismatch.png'),
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
          child: Text('Visualiser'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Visualiser()),
            );
          },
        ),
      ),
    );
  }
}
