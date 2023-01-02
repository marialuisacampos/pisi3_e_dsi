import 'package:easyfood/pages/aboutPage.dart';
import 'package:easyfood/pages/signinPage.dart';
import 'package:easyfood/pages/signupPage.dart';
import 'package:flutter/material.dart';

class PreviewPage extends StatefulWidget {
  @override
  _PreviewPageState createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
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
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  "EasyFood",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Olá, seja bem vindo ao EasyFood, \n  o amigo da sua alimentação",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 60.0,
                ),
                Container(
                  height: 50.0,
                  width: 230.0,
                  child: ElevatedButton(
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontStyle: FontStyle.normal)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPage()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 50.0,
                  width: 230.0,
                  child: ElevatedButton(
                    child: Text('Cadastro'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontStyle: FontStyle.normal)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 50.0,
                  width: 230.0,
                  child: ElevatedButton(
                    child: Text('Sobre'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontStyle: FontStyle.normal)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutPage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
