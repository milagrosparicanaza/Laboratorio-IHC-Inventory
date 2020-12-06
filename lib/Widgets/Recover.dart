import 'package:flutter/material.dart';
import 'package:inventory/generated/l10n.dart';

class Recover extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState()=> _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  TextEditingController user=TextEditingController();
  bool _validate = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body:Container(
        color: Colors.black,
        child:Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Text(" ")),
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back,color: Colors.white,),
                  onPressed: _add,
                )
              ],
            ),
            Container(
              height: 20,
              width: 20,
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top:50),
                      child: Center(
                        child: Text("Inventory", style: TextStyle(color:Colors.deepPurpleAccent, fontSize: 50, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 20,
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: Text("¿Olvidaste tu clave?\n",style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 30,),),),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: Text("Ingresa el correo electronico que\n utilizaste para registrarte y te\n enviaremos instrucciones para\n restablecer tu clave\n\n",style: TextStyle(color:Colors.grey, fontSize: 20,),),),

              ],
            ),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                  controller: user,
                  style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold,fontSize: 15,) ,
                  decoration:InputDecoration(
                      filled: true,
                      hintText: " Correo Electronico",
                      contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                      fillColor: Colors.white),
                ),),
              ],
            ),*/
            Container(
              width: 250,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
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
                      padding: EdgeInsets.all(6.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Correo Electronico",
                            hintStyle: TextStyle(color: Colors.grey[600])
                        ),
                      ),
                    ),
                  ],
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: MaterialButton(
                  minWidth: 200.0,
                  height: 40.0,
                  onPressed: (){},
                  child: Text('Recuperar Clave',style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 25,),),),),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void _add(){
    print("hola");
  }
}