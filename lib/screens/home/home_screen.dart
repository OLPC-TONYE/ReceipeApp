import 'dart:async';
import 'dart:ui';
import 'package:receipeapp/screens/home/components.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class HomeScreen extends StatelessWidget {
  String downloadURL;
  FirebaseApp app;

  Future<void> initializeDefault() async {
    app = Firebase.app();
    assert(app != null);
    print('Initialized default app $app');
  }

  @override
  Widget build(BuildContext context) {
    if (this.app == null) {
      initializeDefault();
    }
    return Column(
      children: <Widget>[
        AppBarWithUser(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Recommended",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Spacer(),
              FlatButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.blueAccent,
                child: Text("See all"),
              ),
            ],
          ),
        ),
        TopFavourites(),
      ],
    );
  }
}

class AppBarWithUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      padding: EdgeInsets.only(left: 10, right: 20, top: 5),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Image(
            image: AssetImage("assets/icons/user.png"),
            width: 40,
          ),
        ],
      ),
    );
  }
}

class NewestReceipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.green,
      ),
      child: Text('Hello'),
    );
  }
}

class TopFavourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          ReceipeButton(
            receipeName: "Egusi Soup",
            imageUrl: "https://firebasestorage.googleapis.com/v0/b/receipeapp-4dd90.appspot.com/o/assets%2Fimages%2Fff47aa505d388c4436579121b38e32ab.jpg?alt=media&token=9836f6d0-a551-4dfc-a153-4b98b9ea955b",
            onClick: () {},
          ),
          ReceipeButton(
            receipeName: "Vegetable Soup",
            imageUrl: "https://firebasestorage.googleapis.com/v0/b/receipeapp-4dd90.appspot.com/o/assets%2Fimages%2Freceipe_image002.jpg?alt=media&token=8fc9ac5d-1e49-4a1c-b3de-b71cfe4a3efd",
            onClick: () {},
          ),
        ],
      ),
    );
  }
}

class UserAccountHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: <Widget>[
        Positioned(
          right: 10.0,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 1,
                ),
              ],
            ),
            child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
              FaIcon(FontAwesomeIcons.user),
            ]),
          ),
        )
      ]),
    );
  }
}
