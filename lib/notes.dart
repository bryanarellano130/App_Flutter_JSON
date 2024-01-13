import 'dart:html';

import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.amber,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
          child: Container(
            child: Text(
              "Nota1.- Regalos por registrase con Gmail",
              style: TextStyle(
                color: Colors.blue, // Color de la fuente
              ),
            ),
          ),
        ),
        Container(
          child: Container(
            color: Colors.amber,
            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
            margin: EdgeInsets.all(10),
            child: Text(
              "Nota2.- Hoy 10 de Enero la tienda solo trabajara hasta la 15H00 PM",
              style: TextStyle(
                color: Colors.red, // Color de la fuente
              ),
            ),
          ),
        ),
        Container(
          color: Colors.amber,
          padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
          margin: EdgeInsets.all(10),
          child: Container(
            child: Text(
              "Nota3.- Promociones el dia 14 de Enero del 2024 ",
              style: TextStyle(
                color: Colors.green, // Color de la fuente
              ),
            ),
          ),
        ),
      ],
    );
  }
}
