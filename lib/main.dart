import 'package:flutter/material.dart';
import 'display_items.dart';

void main() => runApp(
      MaterialApp(
        home: Destini(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Destini extends StatefulWidget {
  @override
  _DestiniState createState() => _DestiniState();
}

class _DestiniState extends State<Destini> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(flex: 4, child: imageDisplay()),
              SizedBox(
                width: 100,
                child: Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(flex:3,child:textDisplay()),
                      showScore(),
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    buttons(
                      text: 'True',
                      color: Colors.green,
                      icon: Icon(Icons.check_circle, color: Colors.white),
                      action: () {
                        setState(() {
                          if (description.checkAnswer() == false) {
                            description.increaseScore();
                          }
                          description.incrementCounter();
                        });
                      },
                    ),
                    buttons(
                        text: 'False',
                        color: Colors.red,
                        icon: Icon(Icons.cancel, color: Colors.white),
                        action: () {
                          setState(() {
                            if (description.checkAnswer() == false) {
                              description.increaseScore();
                            }
                            description.incrementCounter();
                          });
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
