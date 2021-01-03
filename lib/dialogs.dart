import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicgenie/main.dart';

enum DialogAction { yes, abort }

class Dialogs {
  static Future<DialogAction> yesAbortDialog(
      BuildContext context, String title, String body) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: Text(title),
            content: Text(body),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(DialogAction.abort),
                child: Text('Audio', style: TextStyle(color: musicGreen)),
              ),
              RaisedButton(
                color: musicGreen,
                onPressed: () => Navigator.of(context).pop(DialogAction.yes),
                child: Text('Video', style: TextStyle(color: Colors.white)),
              ),
            ],
          );
        },
        );
    return (action!=null)?action: DialogAction.abort;
  }
}
