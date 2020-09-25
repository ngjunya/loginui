import 'package:flutter/material.dart';



class LoginEmailTemplate extends StatefulWidget {
  const LoginEmailTemplate({
    Key key,
    this.hintext,
    this.icon
  }) : super(key: key);

  final IconData icon;
  final String hintext;
  @override
  _LoginEmailTemplateState createState() => _LoginEmailTemplateState();
}

class _LoginEmailTemplateState extends State<LoginEmailTemplate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]),
        height: 50,
        child: TextField(
          cursorWidth: 2,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                widget.icon,
                color: Colors.grey,
              ),
              hintText: widget.hintext),
        ),
      ),
    );
  }
}

class LoginButtonTemplate extends StatefulWidget {
  const LoginButtonTemplate({
    Key key,this.title
  }) : super(key: key);

  final String title;

  @override
  _LoginButtonTemplateState createState() => _LoginButtonTemplateState();
}

class _LoginButtonTemplateState extends State<LoginButtonTemplate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40,0,40,0),
      child: Container(
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:Colors.tealAccent,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: FlatButton(
          onPressed: () {},
          child: Text(
            widget.title,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}


class LoginTopTemplate extends StatefulWidget {
  const LoginTopTemplate({
    Key key,
    this.title,
  
  }) : super(key: key);

  final String title;
 

  @override
  _LoginTopTemplateState createState() => _LoginTopTemplateState();
}

class _LoginTopTemplateState extends State<LoginTopTemplate> {
  @override
  Widget build(BuildContext context) {
    

    return Container(
      alignment: Alignment.center,
      height: 240,
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90),
        ),
      ),
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/logo.png'),
            height: 190,
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(255, 0, 0, 0),
            child: Text(
              widget.title,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontFamily: 'OpenSans'),
            ),
          )
        ],
      ),
    );
  }
}

