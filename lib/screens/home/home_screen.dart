import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class HomeScreen extends StatelessWidget {
  Future<void> initializeDefault() async {
    FirebaseApp app = await Firebase.initializeApp();
    assert(app != null);
    print('Initialized default app $app');
  }

  // firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
  // firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance.ref().child('assets').child('images').child('ff47aa505d388c4436579121b38e32ab.jpg');

  Future<void> downloadURLExample() async {
    String downloadURL = await firebase_storage.FirebaseStorage.instance.ref('users/123/avatar.jpg').getDownloadURL();
    print(downloadURL);
    // Within your widgets:
    // Image.network(downloadURL);
  }

  @override
  Widget build(BuildContext context) {
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
          Icon(Icons.mood),
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
      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage("assets/images/bulb.jpg"),
        //   fit: BoxFit.cover,
        // ),
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
