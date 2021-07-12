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
      body: Center(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(text: "Sign Up"),
                  Tab(text: "Login"),
                ],
              ),
              title: Text('Sign Up/Login'),
            ),
            body: TabBarView(
              children: [
                SignUpForm(),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  final _usernameField = TextEditingController();
  final _passwordField = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _usernameField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          // Add TextFormFields and ElevatedButton here.
          TextFormField(
            controller: _usernameField,
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(icon: Icon(Icons.email_outlined), border: UnderlineInputBorder(), labelText: 'Enter your username'),
          ),
          TextFormField(
            controller: _passwordField,
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(icon: Icon(Icons.lock), border: UnderlineInputBorder(), labelText: 'Enter your password'),
          ),
          ElevatedButton(
            onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Signing Up")));
                try {
                  UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: "barry.allen@example.com",
                    password: "SuperSecretPassword!",
                  );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 35,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.0),
            color: Colors.white60,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email e.g example@gmail.com',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.0),
            color: Colors.white60,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
              ),
            ),
          ),
        ),
        FlatButton(
          child: Text('SignUp'),
        )
      ],
    );
  }
}
