//listview, con un contairne ancho dejarlo ahi mainheader con alto definirlo
//horizontal.lisview si dejas normal trabaja vertcalmente
//scroll direction: axishorisontal o vertical
//compres para llamar } antes de todo listview dentro de container
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formName = TextFormField(
      //controller: nameComplete,
      //se necesita poner un conteiner y un boder radius y ya miro ya
        decoration: InputDecoration(
            labelText: "Nombre(s)", prefixIcon: Icon(Icons.text_fields)),
        validator: (value) {
          if (value.isEmpty) {
            return 'Por favor llenalo No seas sapo';
          }
          return null;
        });
    final formLastname = TextFormField(
        decoration: InputDecoration(
            labelText: "Apellido(s)", prefixIcon: Icon(Icons.text_fields)),
        validator: (value) {
          if (value.isEmpty) {
            return 'Por favor llenalo No seas sapo';
          }
          return null;
        });
    final formCorreo = TextFormField(
        decoration: InputDecoration(
            labelText: "Direccion de Correo", prefixIcon: Icon(Icons.email)),
        validator: (value) {
          if (value.isEmpty) {
            return 'Por favor llenalo No seas sapo';
          }
          return null;
        });

    final formDate = TextFormField(
        decoration: InputDecoration(
            labelText: "fecha de nacimiento: DD/MM/AAAA",
            prefixIcon: Icon(
              Icons.date_range,
              color: Colors.lightBlue,
            )),
        validator: (value) {
          if (value.isEmpty) {
            return 'Por favor llenalo No seas sapo';
          }
          return null;
        });

    final formpassword = TextFormField(
        decoration: InputDecoration(
            labelText: "Introduzca su contraseña",
            prefixIcon: Icon(Icons.check_sharp)),
        validator: (value) {
          if (value.isEmpty) {
            return 'Por favor llenalo No seas sapo';
          }
          return null;
        });
    final formButton = RaisedButton(
      //disabledColor: Colors.blue,
      child: Text("Crea una nueva cuenta"),
      color: Colors.blue[100],
      onPressed: () {
        print("Bienvenido bb");
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Login()),);
      },
    );
    final registro = Container(
      margin: EdgeInsets.all(21),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            formName,
            formLastname,
            formDate,
            formCorreo,
            formpassword,
            formButton,
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
    
    return new Scaffold(
    appBar: AppBar(
    title: Text('Inventory'),
    backgroundColor: Colors.black,
    ),
    body: registro);
  }
}
