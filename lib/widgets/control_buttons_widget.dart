import 'package:flutter/material.dart';
import 'package:music_ui_desing/main.dart';
import 'package:music_ui_desing/widgets/clipper/left_control_button_clipper.dart';
import 'package:music_ui_desing/widgets/clipper/right_control_button_clipper.dart';

class ControlButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            border: Border.all(
              color: AppColor.primaryColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        Container(
          height: 60,
          width: 240,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.primaryColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ClipPath(
                  clipper: LeftControlButtonClipper(),
                  child: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.fast_rewind,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Material(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(25.0),
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: Center(
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ClipPath(
                  clipper: RightControlButtonClipper(),
                  child: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.fast_forward,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
