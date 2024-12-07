import 'package:flutter/material.dart';
import 'package:flutter_proyectofinal_app/clock_view.dart';
import 'package:intl/intl.dart';

class Homepage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2DF41),
      body: Container(
        padding: EdgeInsets.all(32),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Clock',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(height: 32),
            Text(
              'Clock',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            Text(
              'Clock',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            ClockView(),
            Text(
              'Tinezone',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.language,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
