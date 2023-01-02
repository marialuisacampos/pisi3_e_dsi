import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
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
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(height: 60),
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(30, 30, 30, 100),
                            fontSize: 20)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
