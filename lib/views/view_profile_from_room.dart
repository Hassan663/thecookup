import 'package:cookup/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'follower_list.dart';
import 'following_list.dart';

class ViewProfileFromRoom extends StatefulWidget {
  const ViewProfileFromRoom({Key? key}) : super(key: key);

  @override
  _ViewProfileFromRoomState createState() => _ViewProfileFromRoomState();
}

class _ViewProfileFromRoomState extends State<ViewProfileFromRoom> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.9,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        builder: (_, controller) {
          return Container(
              decoration: BoxDecoration(
                  color: fBottomSheetColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.more_horiz_rounded, color: fTextFieldColor),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.close,
                          color: fTextFieldColor,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90.0,
                        width: 90.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/charlespf.png"),
                                  fit: BoxFit.fill),
                              color: fTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 90.0,
                        width: 90.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/charlespf.png"),
                                  fit: BoxFit.fill),
                              color: fTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 90.0,
                        width: 90.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: const BoxDecoration(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      Image.asset("assets/images/bell.png"),
                    ],
                  ),
                  SizedBox(
                    height: 5,
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FollowersList()));
                          },
                          child: SizedBox(
                            width: 106,
                            height: 18,
                            child: Text("22 Followers",
                                style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                      Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FollowingList()));
                          },
                          child: SizedBox(
                            width: 106,
                            height: 19,
                            child: Text("10 Following",
                                style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  
                  Text("Communication arts major, investor, artist. visit my onlie store")
                ],
              ));
        });
  }
}
