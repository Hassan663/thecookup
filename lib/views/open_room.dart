import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenRoom extends StatefulWidget {
  const OpenRoom({Key? key}) : super(key: key);

  @override
  State<OpenRoom> createState() => _OpenRoomState();
}

class _OpenRoomState extends State<OpenRoom> {
  bool ch1 = false;
  bool ch2 = false;
  bool ch3 = false;
  bool ch4 = false;
  bool ch5 = false;
  bool ch6 = false;
  bool ch7 = false;
  bool ch8 = false;
  bool ch9 = false;
  bool ch10 = false;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.95,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        builder: (_, controller) {
          return Container(
            decoration: BoxDecoration(
                color: fBottomSheetColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            child: ListView(
              physics: BouncingScrollPhysics(),
              controller: controller,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                      width: 140,
                      height: 5,
                      decoration: BoxDecoration(
                          color: fSheetLineColor,
                          border: Border.all(
                              color: fSheetBorderLineColor, width: 1))),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Room Title",
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: fRoomTitleBoxColor),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 20.0, bottom: 5, right: 5),
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Description",
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: fRoomTitleBoxColor),
                  child: TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 30.0, top: 20),
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Room Accessibility",
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(22),
                          color: fRoomAccessibilityColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/open.png"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Open",
                            style: GoogleFonts.roboto(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(22),
                          color: fRoomAccessibilityColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/acolyte.png"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Acolyte",
                            style: GoogleFonts.roboto(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(22),
                          color: fRoomAccessibilityColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/locked.png"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Locked",
                            style: GoogleFonts.roboto(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "Schedule Date & Time",
                    style: GoogleFonts.roboto(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 18),
                      child: Container(
                        width: 20,
                        height: 15,
                        child: Checkbox(
                            side: BorderSide(color: fTextFieldColor),
                            value: ch1,
                            checkColor: Colors.blue[100],
                            onChanged: (value) {
                              setState(() {
                                this.ch1 = value!;
                              });
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                          // margin: EdgeInsets.only(left: 20.0, right: 20.0),
                          width: 130.0,
                          height: 26.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: fRoomAccessibilityColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "10 June 2021",
                                  style: GoogleFonts.roboto(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Icon(
                                  Icons.calendar_today,
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                          // margin: EdgeInsets.only(left: 20.0, right: 20.0),
                          width: 130.0,
                          height: 26.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: fRoomAccessibilityColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "04:10 pm",
                                  style: GoogleFonts.roboto(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.watch_later_outlined,
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Row(
                        children: [
                          Text(
                            "Chat",
                            style: GoogleFonts.roboto(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                          Checkbox(
                              side: BorderSide(color: fTextFieldColor),
                              value: ch2,
                              checkColor: Colors.blue[100],
                              onChanged: (value) {
                                setState(() {
                                  this.ch2 = value!;
                                });
                              }),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Row(
                        children: [
                          Text(
                            "Video",
                            style: GoogleFonts.roboto(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                          Checkbox(
                              side: BorderSide(color: fTextFieldColor),
                              value: ch3,
                              checkColor: Colors.blue[100],
                              onChanged: (value) {
                                setState(() {
                                  this.ch3 = value!;
                                });
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Row(
                        children: [
                          Text(
                            "Feed",
                            style: GoogleFonts.roboto(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                          Checkbox(
                              side: BorderSide(color: fTextFieldColor),
                              value: ch4,
                              checkColor: Colors.blue[100],
                              onChanged: (value) {
                                setState(() {
                                  this.ch4 = value!;
                                });
                              }),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Row(
                        children: [
                          Text(
                            "Save Podcast",
                            style: GoogleFonts.roboto(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                          Checkbox(
                              side: BorderSide(color: fTextFieldColor),
                              value: ch5,
                              checkColor: Colors.blue[100],
                              onChanged: (value) {
                                setState(() {
                                  this.ch5 = value!;
                                });
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Text(
                        "Room Size:",
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Text(
                        "Open:",
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ),
                    Checkbox(
                        side: BorderSide(color: fTextFieldColor),
                        value: ch6,
                        checkColor: Colors.blue[100],
                        onChanged: (value) {
                          setState(() {
                            this.ch6 = value!;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Limited",
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Text(
                        "Over Capacity Password:",
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Text(
                        "Charge Entry fee:",
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ),
                    Checkbox(
                        side: BorderSide(color: fTextFieldColor),
                        value: ch7,
                        checkColor: Colors.blue[100],
                        onChanged: (value) {
                          setState(() {
                            this.ch7 = value!;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Text(
                        "Over Capacity  Entry fee:",
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ),
                    Checkbox(
                        side: BorderSide(color: fTextFieldColor),
                        value: ch7,
                        checkColor: Colors.blue[100],
                        onChanged: (value) {
                          setState(() {
                            this.ch7 = value!;
                          });
                        }),
                  ],
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 80),
                  height: 26,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Start Cooking Up",
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            fRoomAccessibilityColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    side: BorderSide(
                                        color: Colors.black, width: 1.0)))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        });
  }
}

// Container(
//               decoration: BoxDecoration(
//                   color: fBottomSheetColor,
//                   borderRadius: BorderRadius.circular(25)),
