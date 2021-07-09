import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurrentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CurrentScreenState();
  }
}

class _CurrentScreenState extends State<CurrentScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.green,
      ),
    );
  }
}
