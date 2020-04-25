import 'package:flutter/material.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => new _BodyState();

}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
         color: Colors.teal,
         textColor: Colors.white,
         child: new Text(
             "Appuyez moi",
           style: new TextStyle(
             fontStyle: FontStyle.italic,
             fontSize: 20.0
           ),
         ),
          onPressed: snack),
    ) ;
  }


  void snack() {
    SnackBar snackBar = new SnackBar(
        content: new Text(
            'Je suis une SnackBar',
          textScaleFactor: 1.5,

        ),
      duration: new Duration(seconds: 5),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }

}