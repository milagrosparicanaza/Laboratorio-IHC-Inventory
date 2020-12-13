import 'package:flutter/material.dart';
import 'package:inventory/generated/l10n.dart';
import 'Bar.dart';

class Crud extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Crud> {
  @override
  List todos = List();
  String input = "";

  void initState() {
    super.initState();
    todos.add("Sábana bajera      03 uds");
    todos.add("Funda Nordica      42 uds");
    todos.add("Funda Almohadas    11 uds");
    todos.add("Toallas baño       12 uds");
    todos.add("Toallas mano       02 uds");
    todos.add("Alfombrín          34 uds");
    todos.add("Toallas Bidé       22 uds");
    todos.add("Toallas Cara       02 uds");
    todos.add("Camas Unitario     11 uds");
    todos.add("Escobas Baño       43 uds");
    todos.add("Escobas Cuarto     22 uds");
    todos.add("Trapeador          25 uds");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          title: Text(S.of(context).inventoryText),
          elevation: 0.0,
          backgroundColor: Colors.transparent),

      //Llamamos a la clase barra donde esta nuestro drower con la lista.
      drawer: Barra(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  title: Text(S.of(context).furnitureText),
                  content: TextField(
                    onChanged: (String value) {
                      input = value;
                    },
                  ),
                  actions: <Widget>[
                    FlatButton(
                        onPressed: () {
                          setState(() {
                            todos.add(input);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text(S.of(context).addText))
                  ],
                );
              });
        },
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todos[index]),
                child: Card(
                  elevation: 4,
                  margin: EdgeInsets.all(6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: ListTile(
                    title: Text(todos[index]),
                    subtitle: Text(S.of(context).descriptionsText),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {
                        setState(() {
                          todos.removeAt((index));
                        });
                      },
                    ),
                    leading: Icon(Icons.edit, color: Colors.blueGrey),
                  ),
                ));
          }),
    );
  }
}