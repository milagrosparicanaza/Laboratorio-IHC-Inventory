import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:inventory/generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Inventory Recovery',
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
            Row(
              children: <Widget>[
                Text("Inventory\n\n",style: TextStyle(color:Colors.green, fontWeight: FontWeight.bold,fontSize: 30,),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: Text("Registrate\n",style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 30,),),),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: TextFormField(
                  controller: user,
                  style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold,fontSize: 15,) ,
                  decoration:InputDecoration(filled: true,hintText: "Nombre(s)\n\n\n",fillColor: Colors.white),
                ),),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: TextFormField(
                  controller: user,
                  style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold,fontSize: 15,) ,
                  decoration:InputDecoration(filled: true,hintText: "Apellido(s)",fillColor: Colors.white),
                ),),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: TextFormField(
                  controller: user,
                  style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold,fontSize: 15,) ,
                  decoration:InputDecoration(filled: true,hintText: "Fecha de nacimiento: DD/MM/AAAA",fillColor: Colors.white),
                ),),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: TextFormField(
                  controller: user,
                  style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold,fontSize: 15,) ,
                  decoration:InputDecoration(filled: true,hintText: "Correo Electronico",fillColor: Colors.white),
                ),),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: TextFormField(
                  controller: user,
                  style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold,fontSize: 15,) ,
                  decoration:InputDecoration(filled: true,hintText: "Contraseña",fillColor: Colors.white),
                ),),

              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: MaterialButton(onPressed: (){},child: Text('Crear una Cuenta nueva',style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 15,),),),),
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