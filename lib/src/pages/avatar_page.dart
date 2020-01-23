import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpwKASjmTZfwin27upuTFHAxyYMlLsfVXLtvEchviYYYE-FMGU&s'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpwKASjmTZfwin27upuTFHAxyYMlLsfVXLtvEchviYYYE-FMGU&s'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(microseconds: 200),
        ),
      ),
    );
  }
}