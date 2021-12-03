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
        initialChildSize: 0.8,
        minChildSize: 0.5,
        maxChildSize: 0.8,
        builder: (_, controller) {
          return Container(
              decoration: const BoxDecoration(
                  color: fBottomSheetColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.more_horiz_rounded,
                              color: fTextFieldColor),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.close,
                            color: fTextFieldColor,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 90.0,
                            width: 90.0,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/charlespf.png"),
                                    fit: BoxFit.fill),
                                color: fTextFieldColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 90.0,
                            width: 90.0,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/charlespf.png"),
                                    fit: BoxFit.fill),
                                color: fTextFieldColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 90.0,
                            width: 90.0,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/charlespf.png"),
                                    fit: BoxFit.fill),
                                color: fTextFieldColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
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
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
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
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Naz T",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.center),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("@Tnazi",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.center),
                      ),
                      const SizedBox(
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Communication arts major, investor, artist. visit my onlie store",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Profile",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  fRoomOptionListBgColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Make Moderator",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  fRoomOptionListBgColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Move to listeners circle",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  fRoomOptionListBgColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Kick from room",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  fRoomOptionListBgColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Ban from room",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  fRoomOptionListBgColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Set as Special Guest VIP",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  fRoomOptionListBgColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}
