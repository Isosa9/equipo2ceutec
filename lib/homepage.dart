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
              builMenuButton('clock', 'assets/clock.png'),
              builMenuButton('Alarm', 'assets/alarm.png'),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 64),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Text(
                    'Clock',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
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
          ),
        ],
      ),
    );
  }

  Padding builMenuButton(String title, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0)
          child: TextButton(
            onPressed: () {},
            child: Column(
           children:<Widget> [

           Image.asset(image),
            SizedBox(height: 16),
            Text(
              title??'' ,
              style: TextStyle(color: Colors.white, fontSize: 14),
            
            ),
             ],
            ), 
          ),
    );
  } 

  

            
          
          
          
         
        
      
  
  }
}
