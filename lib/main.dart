import 'package:flutter/material.dart';
import 'package:receipeapp/screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'ReceipeApp',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Center(
          child: Text(
            'Text',
          ),
        ),
      ),
    );
  }
}
