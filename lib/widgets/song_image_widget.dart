import 'package:flutter/material.dart';

class SongImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      decoration: new BoxDecoration(
          color: Color(0x67f7355f),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.red,
            width: 8.0,
          )),
      child: ClipOval(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          height: 140.0,
          width: 140.0,
          child: Image.network("https://picsum.photos/400"),
        ),
      ),
    );
  }
}
