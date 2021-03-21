import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalera',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: HomePage(title: 'Kalera'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey[900],
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
                      child: SvgPicture.asset(
                        "assets/vectors/logo.svg",
                        color: Colors.white,
                        semanticsLabel: "Logo",
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.grey[900],
                        ),
                        height: 70,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.grey[900],
                              ),
                              width: 100,
                              height: 50,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.grey[700],
                                    ),
                                    width: 50,
                                    height: 50,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.amber[900],
                              ),
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.grey[900],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 8,
            )
          ],
        ),
      ),
    );
  }
}
