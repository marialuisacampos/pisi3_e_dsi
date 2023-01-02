import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(30, 30, 30, 100),
                            fontSize: 20)),
                  ),
                  Divider(),
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(30, 30, 30, 100),
                            fontSize: 20)),
                  )
                ]),
          ),
          padding: EdgeInsets.all(50),
        ));
  }
}
