import 'package:flutter/cupertino.dart';
import 'new_page.dart';
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
        onPressed: verNouvellePage,
      ),
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

  Future<Null> alerte() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text('Ceci est une alerte', textScaleFactor: 1.5,),
            content: new Text(
                'Houston, nous avons un problème avec notre application. Voulez-vous continuer ?'),
            contentPadding: EdgeInsets.all(5.0),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    print('Abort');
                    Navigator.pop(context);
                  },
                  child: new Text(
                    'Annuler', style: new TextStyle(color: Colors.red),)),
              new FlatButton(
                  onPressed: () {
                    print('Proceed');
                    Navigator.pop(context);
                  },
                  child: new Text("Continuer", style: new TextStyle(color: Colors.blue),))

            ],
          );
        }

    );
  }

  Future<Null> dialog(String title, String desc) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new SimpleDialog(
            title: new Text(title, textScaleFactor: 1.4,),
            contentPadding: EdgeInsets.all(10.0),
            children: <Widget>[
              new Text(desc),
              new Container(height: 20.0,),
              new RaisedButton(
                  color: Colors.teal,
                  textColor: Colors.white,
                  child: new Text('OK'),
                  onPressed: () {
                    print('Appuyé');
                    Navigator.pop(context);
                  })

            ],

          );
        }
    );
  }

  void verNouvellePage() {
    Navigator.push(
        context, new MaterialPageRoute(builder: (BuildContext context) {
      return new NouvellePage('La seconde page de PopAlert');
    }));
  }
}