import 'package:flutter/material.dart';

class Barra extends StatefulWidget {
  @override
  _BarraState createState() => _BarraState();
}

class _BarraState extends State<Barra> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
            accountName: Text('Braulio Chavez'),
            accountEmail: Text('bchavezn@unsa.edu.pe'),
            currentAccountPicture: Image.asset('assets/images/user01.jpeg'),
          ),
          ListTile(
            autofocus: true,
            title: Text('Perfil'),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/perfil');
            },
          ),

          //CRUD
          ListTile(
            autofocus: true,
            title: Text('Administración'),
            leading: Icon(Icons.list_alt_outlined),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/crud');
            },
          ),

          //Grafico 1
          ListTile(
            autofocus: true,
            title: Text('Grafico 01'),
            leading: Icon(Icons.analytics),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/barChart');
            },
          ),

          //Grafico 02
          ListTile(
            autofocus: true,
            title: Text('Grafico 02'),
            leading: Icon(Icons.broken_image_outlined),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/histograma');
            },
          ),

          //Grafico 03
          ListTile(
            autofocus: true,
            title: Text('Grafico 03'),
            leading: Icon(Icons.bubble_chart_outlined),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/lineChart');
            },
          ),

          //Grafico 04
          ListTile(
            autofocus: true,
            title: Text('Grafico 04'),
            leading: Icon(Icons.analytics),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/pieChart');
            },
          ),

          //Grafico 05
          ListTile(
            autofocus: true,
            title: Text('Grafico 05'),
            leading: Icon(Icons.analytics),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/fusionChart');
            },
          ),

          //Informe final
          ListTile(
            autofocus: true,
            title: Text('Reporte PDF'),
            leading: Icon(Icons.article),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}