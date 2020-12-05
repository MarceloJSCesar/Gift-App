import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GiftPage extends StatelessWidget {
  final dynamic giftP;
  GiftPage(this.giftP);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          '${giftP['title']}',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {
              Share.share(giftP['images']['fixed_height']['url']);
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Image(
              image: NetworkImage(giftP['images']['fixed_height']['url']),
              width: 300,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
