import 'dart:io';
import 'package:easyfood/pages/signinPage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/logotipo.jpg",
                              ),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      "EasyFood",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text('Cadastro',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                    Divider(),
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Nome Completo",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(30, 30, 30, 100),
                              fontSize: 15)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Data de Nascimento",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(30, 30, 30, 100),
                              fontSize: 15)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(30, 30, 30, 100),
                              fontSize: 15)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Senha",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(30, 30, 30, 100),
                              fontSize: 15)),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Confirmar Senha",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(30, 30, 30, 100),
                              fontSize: 15)),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 50.0,
                      width: 230.0,
                      child: ElevatedButton(
                        child: Text('Cadastrar'),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            backgroundColor: Color(0xff29af6f),
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInPage()));
                        },
                      ),
                    ),
                  ]),
            ),
          ),
          padding: EdgeInsets.all(50),
        ));
  }
}
