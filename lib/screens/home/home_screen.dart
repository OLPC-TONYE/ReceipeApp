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
        child: Stack(children: <Widget>[
          Icon(Icons.menu),
          Positioned(
            right: 10.0,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
                FaIcon(FontAwesomeIcons.user),
              ]),
            ),
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
