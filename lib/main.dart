import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/DrawerListTile.dart';
import 'components/DayTasks.dart';

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
  LinearGradient grad = LinearGradient(
    colors: [
      Color(0x00E65100),
      Color(0x15E65100),
    ],
  );
  Color lTextColor = Colors.amber[900];

  List<bool> _current = [false, true, false, false, false, false];

  Function _handleDrawerListTileTapped(int index) {
    handleTap(bool value) {
      setState(() {
        for (int i = 0; i < _current.length; i++) {
          _current[i] = i == index ? value : !value;
        }
        pageController.jumpToPage(index);
      });
    }

    return handleTap;
  }

  final PageController pageController = new PageController();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page.toInt();
        for (int i = 0; i < _current.length; i++) {
          _current[i] = i == currentPageIndex ? true : false;
        }
      });
    });

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
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          DrawerListTile(
                            text: "Dashboard",
                            icon: Icons.apps_outlined,
                            current: _current[0],
                            onChanged: _handleDrawerListTileTapped(0),
                          ),
                          DrawerListTile(
                            text: "Schedule",
                            icon: Icons.format_list_bulleted,
                            current: _current[1],
                            onChanged: _handleDrawerListTileTapped(1),
                          ),
                          DrawerListTile(
                            text: "Calendar",
                            icon: Icons.calendar_today_outlined,
                            current: _current[2],
                            onChanged: _handleDrawerListTileTapped(2),
                          ),
                          DrawerListTile(
                            text: "Goals",
                            icon: Icons.check_circle_outline_rounded,
                            current: _current[3],
                            onChanged: _handleDrawerListTileTapped(3),
                          ),
                          DrawerListTile(
                            text: "Settings",
                            icon: Icons.settings_rounded,
                            current: _current[4],
                            onChanged: _handleDrawerListTileTapped(4),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25,
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
                      left: 25,
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
                    child: PageView(
                      controller: pageController,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            DayTasks(),
                            DayTasks(),
                            DayTasks(),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            color: Colors.orange,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
