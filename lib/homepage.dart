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
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, d, mm').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('-').first;
    var offsetSign = '';

    if (!timezoneString.startsWith('-')) offsetSign = '+';
    print(timezoneString);

    return Scaffold(
      backgroundColor: Color(0xFF2DF41),
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Column(
                  children: <Widget>[
                    FlutterLogo(),
                    Text(
                      'Clock',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
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
                  formattedDate,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                ClockView(),
                Text(
                  'Tinezone',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    Text(
                      'UTC' + offsetSign + timezoneString,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
