import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/widget/app_icons.dart';
import 'package:cookup/widget/appp_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Following extends StatefulWidget {
  const Following({Key? key}) : super(key: key);

  @override
  _FollowingState createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/codebg.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconClass(
                      iconData: Icons.chevron_left,
                      iconColor: fSearchFieldColor,
                      iconSize: 30,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: MyText(
                        "Following",
                        textAlign: TextAlign.center,
                        color: fSearchFieldColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(height: MediaQuery.of(context).size.width,
                    ),
                  ],
                ))));
  }
}
