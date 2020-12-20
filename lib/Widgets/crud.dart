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
    todos.add("Sábana bajera      03 uds    \nS/.30.00 c/u");
    todos.add("Funda Nordica      42 uds \nS/.10.00 c/u");
    todos.add("Funda Almohadas    11 uds \nS/.20.00 c/u");
    todos.add("Toallas baño       12 uds \nS/.22.00 c/u");
    todos.add("Toallas mano       02 uds \nS/.33.00 c/u");
    todos.add("Alfombrín          34 uds \nS/.56.00 c/u");
    todos.add("Toallas Bidé       22 uds \nS/.31.00 c/u");
    todos.add("Toallas Cara       02 uds \nS/.56.00 c/u");
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
