import 'package:cookup/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonProfileScreen extends StatefulWidget {
  const PersonProfileScreen({Key? key}) : super(key: key);

  @override
  _PersonProfileScreenState createState() => _PersonProfileScreenState();
}

class _PersonProfileScreenState extends State<PersonProfileScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/ppsbg.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon:
                              Icon(Icons.more_horiz_rounded, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90.0,
                        width: 90.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/charlespf.png"),
                                  fit: BoxFit.fill),
                              color: fTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 90.0,
                        width: 90.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/charlespf.png"),
                                  fit: BoxFit.fill),
                              color: fTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 90.0,
                        width: 90.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/charlespf.png"),
                                  fit: BoxFit.fill),
                              color: fTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/message.png"),
                        SizedBox(
                          width: 80,
                          height: 29,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: GoogleFonts.rosarivo(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: fFollowTextColor),
                              textAlign: TextAlign.center,
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    fFollowButtonColor),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(22.0)),
                                        side: BorderSide(
                                            color: fFollowButtonBorderColor,
                                            width: 1.0)))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image.asset("assets/images/bell.png"),
                        ),
                        Image.asset("assets/images/batch.png"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Naz T",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("@Tnazi",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("22 Followers",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                      Text("10 Following",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Add About me",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 23.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/twitter.png"),
                            Text("@Tnazi",
                                style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/instagram.png"),
                            Text("@Tnazi",
                                style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/snapchat.png"),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("@Naze1",
                                  style: GoogleFonts.rosarivo(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white),
                                  textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/tiktok.png"),
                            Text("@NaziNaz",
                                style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/acclogo.png"),
                      Text("@Tcooknaz",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Constituent of",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
