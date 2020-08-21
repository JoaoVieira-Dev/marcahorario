import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              SizedBox(
                width: 50,
                height: 50,
                child: Icon(Icons.access_time),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "E-mail"
                  )
                ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password"
                ),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.lightBlue,
                child: Text("Login"),
                )
            ],
        ),),
      ),
    );
  }
}
