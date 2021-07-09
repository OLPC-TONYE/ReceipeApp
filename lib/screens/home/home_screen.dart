import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
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
      children: <Widget>[
        UserAccountsDrawerHeader(
                                accountName: Text("FlutLab User"),
                                accountEmail: Text("flutlab.ide@gmail.com"),
                                currentAccountPicture: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text(
                                    "F",
                                    style: TextStyle(fontSize: 40.0),
                                    ),
                                ),
                            ),
        
      ]
    );
  }
}
