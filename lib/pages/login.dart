import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'templates.dart/loginpage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.tealAccent,
        toolbarHeight: 31,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              LoginTopTemplate(title: 'Login'),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                alignment: Alignment.topCenter,
                height: 200,
                child: Column(
                  children: <Widget>[
                    LoginEmailTemplate(
                      icon: IconData(57688, fontFamily: 'MaterialIcons'),
                      hintext: 'Email',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginEmailTemplate(
                     icon: IconData(59543, fontFamily: 'MaterialIcons'),
                     hintext: 'Password',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 210),
                      child: Text("Forget Password?"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              LoginButtonTemplate(title: 'Login'),
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "Don't have an account ? ",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'OpenSans',
                      color: Colors.grey[850],
                    ),
                  ),
                  TextSpan(
                    text: 'Register',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'OpenSans',
                      color: Colors.orangeAccent[700],
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/register', arguments: {
                          'top': "Register",
                        });
                      },
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
