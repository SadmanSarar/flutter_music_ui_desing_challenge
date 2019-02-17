import 'package:flutter/material.dart';
import 'package:music_ui_desing/main.dart';
import 'dart:math';

class SongImageWidget extends StatefulWidget {
  @override
  _SongImageWidgetState createState() {
    return _SongImageWidgetState();
  }
}

class _SongImageWidgetState extends State<SongImageWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
      lowerBound: 0.0,
      upperBound: 1.0,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          decoration: new BoxDecoration(
            color: Color(0x67f7355f),
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              height: 140.0,
              width: 140.0,
              child: Image.network("https://picsum.photos/400"),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 170,
          width: 170,
          decoration: new BoxDecoration(
              color: Color(0x33f7355f),
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: AppColor.primaryColor,
              )),
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, widget) {
            return SizedBox.fromSize(
              size: Size(170, 170),
              child: CircularProgressIndicator(
                value: _controller.value,
                valueColor:
                    new AlwaysStoppedAnimation<Color>(AppColor.primaryColor),
                strokeWidth: 5.0,
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, widget) {
            return SizedBox.fromSize(
              size: Size(170, 170),
              child: Transform.translate(
                offset: Offset(
                  85 * cos(2 * pi * _controller.value - pi/2),
                  85 * sin(2 * pi * _controller.value - pi/2),
                ),
                child: SizedBox.fromSize(
                  size: Size.square(4),
                  child: Icon(
                    Icons.radio_button_unchecked,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
