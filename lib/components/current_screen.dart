import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurrentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CurrentState();
  }
}

class _CurrentScreenState extends State<CurrentScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Center(
        child: Text(
          'Text',
        ),
      ),
    );
    ;
  }
}
