import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration=Duration(seconds:4);
    return Timer(duration,route);
  }

  route(){
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Container(
              child: Image.asset("assets/logo.png"),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 260),
            child: Column(
              children: [
                Text(
                  "from",
                  style: TextStyle(
                    color: Colors.green
                  ),
                ),
                Text('Ng Jun Ya',
               style: TextStyle(
              color: Colors.orange
            ),),
              ],
            ),
          )
        ],
      )),
    );
  }
}
