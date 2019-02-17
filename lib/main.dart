import 'package:flutter/material.dart';
import 'package:music_ui_desing/widgets/control_buttons_widget.dart';
import 'package:music_ui_desing/widgets/paly_list_widget.dart';
import 'package:music_ui_desing/widgets/play_list_pages.dart';
import 'package:music_ui_desing/widgets/song_image_widget.dart';
import 'package:music_ui_desing/widgets/song_title_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xffffffff),
      ),
      home: MyHomePage(),
    );
  }
}

class AppColor {
  static final primaryColor = Color(0xFFf7355f);
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFFFFFF),
        title: Center(
          child: Text(
            'Music World',
            style: TextStyle(
              color: Color(0xFFf7355f),
              fontFamily: 'Nexa',
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox.fromSize(
            size: Size.fromHeight(16.0),
          ),
          buildSongImageWidget(),
          Padding(
            padding: EdgeInsets.only(top: 16.0),
          ),
          buildSongTitleWidget(),
          SizedBox.fromSize(
            size: Size.fromHeight(16.0),
          ),
          buildControlButtonsWidget(),
          SizedBox.fromSize(
            size: Size.fromHeight(16.0),
          ),
          buildPlayListPages(),
        ],
      ),
    );
  }

  Expanded buildPlayListPages() {
    return Expanded(
      child: PlayListPages(),
    );
  }

  Widget buildPlayListWidget() {
    return PlayListWidget();
  }

  Widget buildControlButtonsWidget() {
    return ControlButtonWidget();
  }

  Widget buildSongImageWidget() {
    return SongImageWidget();
  }

  Widget buildSongTitleWidget() {
    return SongTitleWidget();
  }
}
