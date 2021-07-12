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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.centerRight,
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 12,
              ),
            ],
            // borderRadius: BorderRadius.only(
            //   // topLeft: Radius.circular(63),
            //   bottomLeft: Radius.circular(63),
            // ),
          ),
          child: Stack(
            children: <Widget>[
              IconButton(
                icon: Image.asset("assets/icons/back_arrow.png"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/icons/hourglass.png"),
                    width: 35,
                  ),
                  Text("Cook Time"),
                  Text("1 Hour"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/icons/heart.png"),
                    width: 35,
                  ),
                  Text("Likes"),
                  Text("1"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/icons/bookmark2.png"),
                    width: 40,
                  ),
                  Text("Not Saved"),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.blue,
              ),
              Icon(Icons.mood),
            ],
          ),
        ),
      ],
    );
  }
}
