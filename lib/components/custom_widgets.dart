import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomAppNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      margin: EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconButton(
            // icon: Image.asset("assets/icons/home.png", color: Colors.blue, width: 55, height: 55),
            icon: ImageIcon(
              AssetImage("assets/icons/home.png"),
              color: Colors.red,
              size: 135,
            ),
            onPressed: () {},
          ),
          IconButton(
            // icon: Image.asset("assets/icons/home.png", color: Colors.blue, width: 55, height: 55),
            icon: ImageIcon(
              AssetImage("assets/icons/home.png"),
              color: Colors.red,
              size: 135,
            ),
            onPressed: () {},
          ),
          IconButton(
            // icon: Image.asset("assets/icons/home.png", color: Colors.blue, width: 55, height: 55),
            icon: ImageIcon(
              AssetImage("assets/icons/home.png"),
              color: Colors.red,
              size: 135,
            ),
            onPressed: () {},
          ),
          IconButton(
            // icon: Image.asset("assets/icons/home.png", color: Colors.blue, width: 55, height: 55),
            icon: ImageIcon(
              AssetImage("assets/icons/user2.png"),
              color: Colors.red,
              size: 135,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
