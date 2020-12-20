import 'package:flutter/material.dart';
import 'package:inventory/generated/l10n.dart';

class Recover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomPadding: false,
        body: Container(
            child: Column(children: <Widget>[
          Container(
            height: 30,
            width: 30,
          ),
          Container(
            height: 200,
            width: 400,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Center(
                      child: Text(
                        S.of(context).nameText,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    S.of(context).quizText,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Center(
                  child: Text(
                    S.of(context).descriptionText,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, 0.2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10))
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[100]))),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: S.of(context).emailText,
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  child: RaisedButton(
                    color: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, "/four");
                    },
                    child: SizedBox(
                      width: 200,
                      height: 100,
                      child: Center(
                        child: Text(S.of(context).recoverText,
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ])));
  }
}
