import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:receipeapp/screens/home/home_screen.dart';
import 'package:receipeapp/components/current_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              CurrentScreen(),
              Container(
                padding: EdgeInsets.only(left: 35, right: 35),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent,
                      offset: Offset(10, 10),
                    )
                  ],
                  border: Border(
                    top: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
                    left: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
                    right: BorderSide(width: 1.0, color: Color(0xFF000000)),
                    bottom: BorderSide(width: 1.0, color: Color(0xFF000000)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.home),
                    FaIcon(FontAwesomeIcons.plus),
                    FaIcon(FontAwesomeIcons.heart),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
