import 'package:flutter/material.dart';
import 'package:music_ui_desing/main.dart';
import 'dart:math';

class BackgroundAnimatedContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BackgroundAnimatedContainerState();
  }
}

class _BackgroundAnimatedContainerState
    extends State<BackgroundAnimatedContainer>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
      lowerBound: -1.0,
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
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, widget) {
        return Stack(
          children: <Widget>[
            Positioned(
              top: 30 + 20 * cos(2 * pi * _controller.value),
              left: 30 + 10 * sin(4 * pi * _controller.value),
              child: Icon(
                Icons.play_arrow,
                color: AppColor.primaryColor,
              ),
            ),
            Positioned(
              top: 35 + 20 * sin(2 * pi * _controller.value),
              right: 35 + 10 * cos(4 * pi * _controller.value),
              child: Icon(
                Icons.play_arrow,
                color: AppColor.primaryColor,
              ),
            ),
            Positioned(
              top: 155 - 20 * sin(1*  pi * _controller.value),
              right: 20 + 10 * cos(2 * pi * _controller.value),
              child: Icon(
                Icons.play_arrow,
                color: AppColor.primaryColor,
              ),
            ),
            Positioned(
              top: 165 - 10 * cos(2 * pi * _controller.value),
              left: 45 - 10 * sin(1 * pi * _controller.value),
              child: Icon(
                Icons.play_arrow,
                color: AppColor.primaryColor,
              ),
            )
          ],
        );
      },
    );
  }
}
