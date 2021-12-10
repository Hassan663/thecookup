import 'package:cookup/widget/actions_toolbar.dart';
import 'package:cookup/widget/bottom_toolbar.dart';
import 'package:cookup/widget/video_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TcuVideo extends StatefulWidget {
  const TcuVideo({Key? key}) : super(key: key);

  @override
  _TcuVideoState createState() => _TcuVideoState();
}

class _TcuVideoState extends State<TcuVideo> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/videobackground.png"),
              fit: BoxFit.cover)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              // Top section
              topSection,

              // Middle expanded
              middleSection,

              // Bottom Section
              BottomToolbar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget get topSection => Container(
        height: 100.0,
        padding: EdgeInsets.only(bottom: 15.0),
      );

  Widget get middleSection => Expanded(
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [VideoDescription(), ActionsToolbar()]));
}
