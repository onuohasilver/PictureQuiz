import 'package:flutter/material.dart';
import 'descriptions.dart';

Description description = Description();

Widget buttons({String text, dynamic action, Color color, Icon icon}) {
  return Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: FlatButton(
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon,
            Text(
              text,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        onPressed: action,
      ),
    ),
  );
}

Widget textDisplay() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      color: Colors.black,
      margin: EdgeInsets.all(1),
      elevation: 6.0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 15, 2, 2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description.getNextDescription(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

Widget showScore() {
  //This function displays the values of the users current score
  return Expanded(
    child: Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                description.scoreValue().toString(),
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 54,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width:50,
              child: Divider(thickness: 3),
            )
          ],
        ),
      ),
    ),
  );
}

Widget imageDisplay() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
        margin: EdgeInsets.all(12.0),
        child: Image.asset(
          description.getNextImage(),
          height: 920,
          width: 430,
          fit: BoxFit.cover,
        ),
        color: Colors.lime[200],
        elevation: 12.0),
  );
}
