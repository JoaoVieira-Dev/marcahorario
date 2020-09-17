import 'package:flutter/material.dart';
import 'package:marcahorario/app/pages/login/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: "Nome completo"),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Digite um nome';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Telefone"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "E-mail"),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Digite um e-mail';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Senha"),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Digite uma senha';
                              }
                              return null;
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: checkBoxValue,
                                onChanged: (bool value) {
                                  setState(() {
                                    checkBoxValue = value;
                                  });
                                },
                              ),
                              Text("Termos e Condições")
                            ],
                          ),
                        ],
                      )),
                ),
              ),
              Container(
                  child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }
                },
                child: Text("Criar Conta"),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
