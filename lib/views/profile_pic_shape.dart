import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/photo_icon_chng.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePicShapeScreen extends StatefulWidget {
  const ProfilePicShapeScreen({Key? key}) : super(key: key);

  @override
  _ProfilePicShapeScreenState createState() => _ProfilePicShapeScreenState();
}

class _ProfilePicShapeScreenState extends State<ProfilePicShapeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/ppsbg.png"),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 78.0),
                child: Text(
                  "Change your profile photo",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 73,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 119.0,
                    width: 95.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: fTextFieldColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(75.0))),
                    ),
                  ),
                  Container(
                    height: 119.0,
                    width: 95.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: fTextFieldColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(75.0))),
                    ),
                  ),
                  Container(
                    height: 119.0,
                    width: 95.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: fTextFieldColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(75.0))),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/images/circle.png"),
                    Image.asset("assets/images/starr.png"),
                    Image.asset("assets/images/triaangle.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 161,
                height: 44,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhotoIconChange()));
                  },
                  child: Text(
                    "Change Shape of\nPhoto",
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(fTextFieldColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100.0)),
                              side: BorderSide(
                                  color: Colors.white, width: 1.0)))),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Material(
                borderRadius: BorderRadius.circular(12.0),
                elevation: 10,
                shadowColor: Color(0xFF00000040),
                child: SizedBox(
                  width: 110,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(
                      "Done",
                      style: GoogleFonts.nunito(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(fDoneButtonColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ))),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
