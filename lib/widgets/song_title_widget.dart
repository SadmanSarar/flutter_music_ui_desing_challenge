import 'package:flutter/material.dart';

class SongTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Justin Bieber ft Never Say',
          style: TextStyle(
            color: Color(0xFFf7355f),
            fontFamily: 'Nexa',
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox.fromSize(
          size: Size.fromHeight(10.0),
        ),
        Text(
          'The Weeknd',
          style: TextStyle(
            color: Color(0xFFf7355f),
            fontFamily: 'Nexa',
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
