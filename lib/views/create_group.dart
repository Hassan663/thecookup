import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/photo_icon_chng.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feed_room_setting_option.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/grpbg.png"),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/cross.png")),
                  ),
                ),
                Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(
                      color: fTextFieldColor,
                      image: DecorationImage(
                          image: AssetImage("assets/images/addimage.png"))),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "Create a Group",
                  style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: 280,
                  height: 26,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PhotoIconChange()));
                    },
                    child: Text(
                      "Change Shape of Photo",
                      style: GoogleFonts.nunito(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(fTextFieldColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(100.0)),
                                    side: BorderSide(
                                        color: Colors.white, width: 1.0)))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 330.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: fTextFieldColor),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Group Name",
                      contentPadding: EdgeInsets.only(left: 30.0, bottom: 5),
                      hintStyle: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 330.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      color: fTextFieldColor),
                  child: TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "About....",
                      contentPadding: EdgeInsets.only(left: 30.0, top: 20),
                      hintStyle: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: 330.0,
                    height: 190.0,
                    color: fTextFieldColor,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8.0, top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Membership",
                                style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              Text(
                                "Open to Public",
                                style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8.0, top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Positions/Rolls",
                                style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              Text(
                                "Co-Owner ,Presidents, \nChat Mod ,Feed Mod",
                                maxLines: 2,
                                style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8.0, top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Interest Topic",
                                style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              Text(
                                "Relax , Open , \nBusiness , A.i.",
                                style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8.0, top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Subscription",
                                style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              Text(
                                "No Charge",
                                style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 330.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: fTextFieldColor),
                  child: TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Room Rules you want your Acolytes to follow",
                      contentPadding:
                          EdgeInsets.only(left: 25.0, top: 15, right: 20),
                      hintStyle: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: fHintTextColor),
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const CodeScreen()));
                  },
                  child: ClipOval(
                      child: Container(
                    width: 81.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: fCreateColor,
                      border: Border.all(color: Colors.black, width: 2.0),
                      borderRadius:
                          new BorderRadius.all(Radius.elliptical(81, 45)),
                    ),
                    child: Center(
                      child: Text(
                        "Create",
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
                ),
                SizedBox(
                  height: 27,
                ),
              ],
            ),
          ),
        )));
  }
}
