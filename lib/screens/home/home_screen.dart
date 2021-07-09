import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.87,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.green,
      ),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 500.0,
        width: 500.0,
        child: Stack(children: <Widget>[
          Icon(Icons.mood),
          Positioned(
            left: 30.0,
            child: Icon(Icons.mood),
          )
        ]),
      ),
    );
  }
}

class UserAccountHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FaIcon(FontAwesomeIcons.user),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "User: Charlie",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
