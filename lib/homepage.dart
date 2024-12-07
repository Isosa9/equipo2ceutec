import 'package:flutter/material.dart';
import 'package:flutter_proyectofinal_app/clock_view.dart';

class Homepage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 35, 53, 68),
        child: ClockView(),
      ),
    );
  }
}
