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
      backgroundColor: const Color.fromARGB(255, 43, 40, 14),
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                onPressed: (){},
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
            ]
          )
          VerticalDivider(
            color: Colors.white54,
            width: 1,
            ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64)
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Clock',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 32),
                  Text(
                    formattedTime
                  )
                ],
              ),
            ),
          )
        ]
      ),
    );
  }
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
              title ??'' ,
              style: TextStyle(color: Colors.white, fontSize: 14),
            
            ),
             ],
            ), 
          ),
    );
  } 

  

            
          
          
          
         
        
      
  
  }
}
