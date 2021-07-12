import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:receipeapp/components/custom_widgets.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp or Login', textAlign: TextAlign.center),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("FlutLab is on your service!"),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.0),
                color: Colors.white60,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    errorText: 'Error Text',
                    hintText: 'Email e.g example@gmail.com',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
