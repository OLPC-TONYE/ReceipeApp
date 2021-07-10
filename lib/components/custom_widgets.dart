import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          SvgPicture.asset('assets/icons/home.svg'),
          FaIcon(FontAwesomeIcons.plus, size: 35),
          FaIcon(FontAwesomeIcons.bookmark, size: 35),
          FaIcon(FontAwesomeIcons.user, size: 35),
        ],
      ),
    );
  }
}
