import 'dart:async';

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
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.87,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.green,
      ),
      child: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: double.infinity,
              maxHeight: 60,
            ),
            child: UserAccountHeader(),
          ),
          MostViewed(),
          Text(downloadURL != null ? downloadURL : 'Loading...'),
        ],
      ),
    );
  }
}

class MostViewed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/receipeapp-4dd90.appspot.com/o/assets%2Fimages%2Fff47aa505d388c4436579121b38e32ab.jpg?alt=media&token=9836f6d0-a551-4dfc-a153-4b98b9ea955b"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            "Most Viewed",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
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
