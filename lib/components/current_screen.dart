import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:receipeapp/screens/home/home_screen.dart';

class CurrentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CurrentScreenState();
  }
}

class _CurrentScreenState extends State<CurrentScreen> {
  var Screen;

  @override
  void initState() {
    super.initState();
    this.Home();
  }

  void Home() {
    setState(() {
      this.Screen = HomeScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return this.Screen;
    ;
  }
}
