import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:receipeapp/components/custom_widgets.dart';

import 'package:receipeapp/screens/home/home_screen.dart';
import 'package:receipeapp/screens/receipe/receipe_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
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
    return Scaffold(
      appBar: AppBar(),
      body: HomeScreen(),
      bottomNavigationBar: BottomAppNavBar(),
    );
  }
}
