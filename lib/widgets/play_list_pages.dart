import 'package:flutter/material.dart';
import 'package:music_ui_desing/main.dart';
import 'package:music_ui_desing/widgets/paly_list_widget.dart';

class PlayListPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, item) {
        if (item == 1) {
          return PlayListWidget();
        }
        return Container(
          margin: EdgeInsets.all(8),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppColor.primaryColor,
          ),
        );
      },
      itemCount: 3,
      controller:
          PageController(initialPage: 1, viewportFraction: 0.8, keepPage: true),
      pageSnapping: true,
      physics: PageScrollPhysics(),
    );
    ;
  }
}
