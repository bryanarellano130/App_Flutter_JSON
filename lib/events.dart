import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Eventos'),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(30.0),
              child: Image.network(
                'https://media.istockphoto.com/id/974238866/es/foto/audiencia-escucha-al-profesor-en-la-conferencia.jpg?s=2048x2048&w=is&k=20&c=mcLuAg2RPSje74tGs3Hc0QQYsaqQoLnO_1U6DEnMfOw=',
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Image.network(
                'https://media.istockphoto.com/id/1334438284/es/vector/iconos-de-l%C3%ADnea-de-v%C3%ADdeo-y-audio.jpg?s=2048x2048&w=is&k=20&c=eXHAXVf0UzxHgNNWpmFGkxLl3GC_TzkB4fhGyv5q9AA=',
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Image.network(
                'https://media.istockphoto.com/id/1073935306/es/foto/chicas-llevando-bolsas-de-compras.jpg?s=2048x2048&w=is&k=20&c=6qH0UtBQsYTchZofTGgMwhT_gREnctkOrpx9XdmDvVc=',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
