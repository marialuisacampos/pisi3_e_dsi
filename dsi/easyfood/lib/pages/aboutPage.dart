import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                  SizedBox(height: 15),
                  Text('Versão 1.0',
                      style: const TextStyle(
                        color: Color(0xff29af6f),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                  Divider(height: 30),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed aliquam erat, id maximus mauris. Fusce vitae quam malesuada, pulvinar eros eu, tempor mi. Duis at luctus tellus. Proin lobortis ante massa, ac rutrum mauris accumsan sit amet. Duis et tellus nisl. Donec urna nibh, gravida eget facilisis consectetur, porttitor eu mi. Nulla scelerisque lacus in viverra pharetra. Vivamus ac magna libero. Suspendisse commodo ligula a turpis sollicitudin elementum. Nulla sagittis consequat massa vulputate lacinia. Suspendisse et metus et nisi tincidunt tempus imperdiet ut lacus. Aliquam placerat ante diam, ornare dignissim neque gravida id. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus")
                ])),
          ),
          padding: EdgeInsets.all(50),
        ));
  }
}
