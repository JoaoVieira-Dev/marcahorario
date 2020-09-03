import 'package:flutter/material.dart';
import 'package:marcahorario/app/pages/homepage/home_page.dart';
import 'package:marcahorario/app/pages/registerpage/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 700,
          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        child: Logotipo(),
                      ),
                      TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Digite o e-mail';
                            }
                            return null;
                          },
                          decoration: InputDecoration(labelText: "E-mail")),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Digite a senha';
                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: "Senha"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          }
                        },
                        color: Colors.lightBlue[800],
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text("Esqueci minha senha",
                        textAlign: TextAlign.center),
                    onTap: () {},
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    title: Text("Registrar", textAlign: TextAlign.center),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Logotipo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('lib/app/assets/logo.png'),
      width: 100,
    );
  }
}
