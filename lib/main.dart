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
          appBar: AppBar(
            title: Text('title'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              CurrentScreen(),
              Padding(padding: EdgeInsets.only(left: 20, right: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.home),
                  FaIcon(FontAwesomeIcons.plus),
                  FaIcon(FontAwesomeIcons.heart),
                ],
              ),
            ],
          ),
        ));
  }
}
