import 'package:flutter/material.dart';
import 'package:inventory/generated/l10n.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    title: S.of(context).starText;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            child: Column(
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/cuadro.png'),
                            fit:BoxFit.fill
                        )
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(top:50),
                            child: Center(
                              child: Text(S.of(context).starText , style: TextStyle(color:Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, 0.2),
                                      blurRadius: 20.0,
                                      offset: Offset(0,10)
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: S.of(context).emailText,
                                        hintStyle: TextStyle(color: Colors.grey[400])
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: S.of(context).passwordText,
                                        hintStyle: TextStyle(color: Colors.grey[400])
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(height: 30,),
                        Container(
                          height: 50,
                          child: RaisedButton(
                            color: Colors.white,
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {Navigator.pushNamed(context, "/four");},
                            child: SizedBox(
                              width: 300,
                              height: 100,

                              child: Center(
                                child: Text(S.of(context).enterText,
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          child: RaisedButton(
                            color: Colors.white,
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {Navigator.pushNamed(context, "/two");},
                            child: SizedBox(
                              width: 300,
                              height: 100,

                              child: Center(
                                child: Text(S.of(context).registerText,
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text(S.of(context).quizText, style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),),
                        FlatButton(
                          child: new Text('Flat Button'),
                            onPressed: () {Navigator.pushNamed(context, "/tree");},
                        )
                      ],
                    ),
                  )
                ]
            )
        )
    );
  }
}
