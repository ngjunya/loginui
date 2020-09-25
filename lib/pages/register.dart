import 'package:flutter/material.dart';
import 'package:login/pages/templates.dart/loginpage.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}
 
class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.tealAccent,
       elevation: 0,
       toolbarHeight: 31,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              LoginTopTemplate(title:'Register'),
              SizedBox(height: 13),
              Container(
                  color: Colors.white,
                  alignment: Alignment.topCenter,
                  height: 290,
                  child: Column(
          children: <Widget>[
            LoginEmailTemplate(
              icon:IconData(59389, fontFamily: 'MaterialIcons'),
              hintext: 'Fullname',
            ),
            SizedBox(
              height: 20,
            ),
            LoginEmailTemplate(
              icon: IconData(57688, fontFamily: 'MaterialIcons'),
              hintext: 'Email',
            ),
            SizedBox(
              height: 20,
            ),
            LoginEmailTemplate(
              icon:IconData(58705, fontFamily: 'MaterialIcons'),
              hintext: 'Contact',
            ),
            SizedBox(
              height: 20,
            ),
            LoginEmailTemplate(
              icon: IconData(57562, fontFamily: 'MaterialIcons'),
              hintext: 'Password',
            ),
          ],
                  ),
                ),
                LoginButtonTemplate(title:'REGISTER'),
            ],
          ),
        ),
      ),
    );
  }
}
