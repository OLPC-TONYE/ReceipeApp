import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReceipeDetailScreen extends StatelessWidget {
  const ReceipeDetailScreen({
    Key key,
    this.receipeName,
    this.imageUrl,
  }) : super(key: key);

  final String receipeName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: ReceipeDetail(
        receipeName: receipeName,
        imageUrl: imageUrl,
      ),
    );
  }
}

class ReceipeDetail extends StatelessWidget {
  const ReceipeDetail({
    Key key,
    this.receipeName,
    this.imageUrl,
  }) : super(key: key);

  final String receipeName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).height * 0.35,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 12,
              ),
            ],
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Stack(
            children: <Widget>[],
          ),
        ),
        Text("FlutLab is on your service!"),
        Icon(Icons.mood),
      ],
    );
  }
}
