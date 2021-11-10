import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/profile_pic_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoIconChange extends StatefulWidget {
  const PhotoIconChange({Key? key}) : super(key: key);

  @override
  _PhotoIconChangeState createState() => _PhotoIconChangeState();
}

class _PhotoIconChangeState extends State<PhotoIconChange> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      backgroundColor: fTextFieldColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 40),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProfilePicShapeScreen()));
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Choose Shape Icon",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Colors.black),
          ),
          SizedBox(
            height: 11,
          ),
        ],
      ),
    );
  }
}
