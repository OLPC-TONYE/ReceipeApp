import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,

      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
            UserAccountHeader(),
        ],
      ),
    );
  }
}

class UserAccountHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
            FaIcon(FontAwesomeIcons.user),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  Text("User: Charlie"),
                  Text.,
              ],
            ),
        ],
      ), 
    );
  }
}
