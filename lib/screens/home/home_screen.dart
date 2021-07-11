import 'dart:async';
import 'dart:ui';
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
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("FlutLab is on your service!"),
              Icon(Icons.mood),
            ],
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: double.infinity,
            maxHeight: 60,
          ),
          child: UserAccountHeader(),
        ),
        TopFavourites(),
        NewestReceipes(),
      ],
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
    return Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.285,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/receipeapp-4dd90.appspot.com/o/assets%2Fimages%2Fff47aa505d388c4436579121b38e32ab.jpg?alt=media&token=9836f6d0-a551-4dfc-a153-4b98b9ea955b"),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Text(
                    "Egusi Soup",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
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
