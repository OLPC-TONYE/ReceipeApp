import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurrentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomAppBar(
        color: Colors.orangeAccent,
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
