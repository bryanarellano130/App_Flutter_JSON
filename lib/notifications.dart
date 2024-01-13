import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notificaciones'),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(30.0),
              child: Image.network(
                'https://media.istockphoto.com/id/1479014673/es/vector/maqueta-de-plantilla-de-notificaci%C3%B3n-push.jpg?s=2048x2048&w=is&k=20&c=2c44B7dr1HgZOgDDlWfuuIaO6yr3n_YRxwlQzz2cAzs=',
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Image.network(
                'https://media.istockphoto.com/id/1479014673/es/vector/maqueta-de-plantilla-de-notificaci%C3%B3n-push.jpg?s=2048x2048&w=is&k=20&c=2c44B7dr1HgZOgDDlWfuuIaO6yr3n_YRxwlQzz2cAzs=',
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Image.network(
                'https://media.istockphoto.com/id/1479014673/es/vector/maqueta-de-plantilla-de-notificaci%C3%B3n-push.jpg?s=2048x2048&w=is&k=20&c=2c44B7dr1HgZOgDDlWfuuIaO6yr3n_YRxwlQzz2cAzs=',
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Image.network(
                'https://media.istockphoto.com/id/1479014673/es/vector/maqueta-de-plantilla-de-notificaci%C3%B3n-push.jpg?s=2048x2048&w=is&k=20&c=2c44B7dr1HgZOgDDlWfuuIaO6yr3n_YRxwlQzz2cAzs=',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
