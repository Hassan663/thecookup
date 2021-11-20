import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedRoomSettingOption extends StatefulWidget {
  const FeedRoomSettingOption({Key? key}) : super(key: key);

  @override
  _FeedRoomSettingOptionState createState() => _FeedRoomSettingOptionState();
}

class _FeedRoomSettingOptionState extends State<FeedRoomSettingOption> {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = true;
  bool status5 = false;
  bool status6 = true;

  int? _value = 1;
  int? _value2 = 1;

  String? valueChoose;
  List listItem = ["1", "2", "3", "4", "5"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: fFeedRoomBgColor,
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 10),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const CodeScreen()));
                        },
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Colors.white))),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Video Options",
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Text(
                      "Video: Video on/off",
                      style: GoogleFonts.nunito(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: FlutterSwitch(
                        width: 52.0,
                        height: 23.0,
                        value: status1,
                        showOnOff: true,
                        padding: 2,
                        valueFontSize: 11,
                        activeTextFontWeight: FontWeight.w700,
                        inactiveTextFontWeight: FontWeight.w700,
                        inactiveTextColor: Colors.black,
                        activeTextColor: Colors.black,
                        activeColor: fSwitchActiveColor,
                        inactiveColor: fTextColor,
                        toggleColor: Colors.black,
                        onToggle: (val) {
                          setState(() {
                            status1 = val;
                          });
                        }),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Text(
                      "Video: Share split screen",
                      style: GoogleFonts.nunito(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: FlutterSwitch(
                        width: 52.0,
                        height: 23.0,
                        value: status2,
                        showOnOff: true,
                        padding: 2,
                        valueFontSize: 11,
                        activeTextFontWeight: FontWeight.w700,
                        inactiveTextFontWeight: FontWeight.w700,
                        inactiveTextColor: Colors.black,
                        activeTextColor: Colors.black,
                        activeColor: fSwitchActiveColor,
                        inactiveColor: fTextColor,
                        toggleColor: Colors.black,
                        onToggle: (val) {
                          setState(() {
                            status2 = val;
                          });
                        }),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Chat Options",
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Text(
                      "Chat: Turn Chat on/off",
                      style: GoogleFonts.nunito(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: FlutterSwitch(
                        width: 52.0,
                        height: 23.0,
                        value: status3,
                        showOnOff: true,
                        padding: 2,
                        valueFontSize: 11,
                        activeTextFontWeight: FontWeight.w700,
                        inactiveTextFontWeight: FontWeight.w700,
                        inactiveTextColor: Colors.black,
                        activeTextColor: Colors.black,
                        activeColor: fSwitchActiveColor,
                        inactiveColor: fTextColor,
                        toggleColor: Colors.black,
                        onToggle: (val) {
                          setState(() {
                            status3 = val;
                          });
                        }),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: SizedBox(
                      width: 252,
                      height: 24,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "Chat: set to request/everyone",
                          style: GoogleFonts.nunito(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  FlutterSwitch(
                      width: 80.0,
                      height: 23.0,
                      value: status4,
                      showOnOff: true,
                      padding: 2,
                      valueFontSize: 11,
                      activeText: 'Request',
                      inactiveText: 'Everyone',
                      activeTextFontWeight: FontWeight.w700,
                      inactiveTextFontWeight: FontWeight.w700,
                      inactiveTextColor: Colors.black,
                      activeTextColor: Colors.black,
                      activeColor: fSwitchActiveColor,
                      inactiveColor: fTextColor,
                      toggleColor: Colors.black,
                      onToggle: (val) {
                        setState(() {
                          status4 = val;
                        });
                      })
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Feed Options",
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Text(
                      "Feed: Turn on/off Feed",
                      style: GoogleFonts.nunito(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: FlutterSwitch(
                        width: 52.0,
                        height: 23.0,
                        value: status5,
                        showOnOff: true,
                        padding: 2,
                        valueFontSize: 11,
                        activeTextFontWeight: FontWeight.w700,
                        inactiveTextFontWeight: FontWeight.w700,
                        inactiveTextColor: Colors.black,
                        activeTextColor: Colors.black,
                        activeColor: fSwitchActiveColor,
                        inactiveColor: fTextColor,
                        toggleColor: Colors.black,
                        onToggle: (val) {
                          setState(() {
                            status5 = val;
                          });
                        }),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: SizedBox(
                      width: 252,
                      height: 24,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "Feed: set to request/everyone",
                          style: GoogleFonts.nunito(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  FlutterSwitch(
                      width: 80.0,
                      height: 23.0,
                      value: status6,
                      showOnOff: true,
                      padding: 2,
                      valueFontSize: 11,
                      activeText: 'Request',
                      inactiveText: 'Everyone',
                      activeTextFontWeight: FontWeight.w700,
                      inactiveTextFontWeight: FontWeight.w700,
                      inactiveTextColor: Colors.black,
                      activeTextColor: Colors.black,
                      activeColor: fSwitchActiveColor,
                      inactiveColor: fTextColor,
                      toggleColor: Colors.black,
                      onToggle: (val) {
                        setState(() {
                          status6 = val;
                        });
                      })
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: SizedBox(
                  width: 326,
                  height: 24,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "Feed: post set to Moderator approval first",
                      style: GoogleFonts.nunito(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Yes",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  Text(
                    "No",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                      value: 1,
                      groupValue: _value,
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          _value = value as int?;
                        });
                      }),
                  Radio(
                      value: 2,
                      groupValue: _value,
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          _value = value as int?;
                        });
                      }),
                ],
              ),
              Text(
                "Mute all in Round Table",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.black),
              ),
              Text(
                "All speakers will be muted except room owner ",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "15 Sec",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  Text(
                    "30 Sec",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  Text(
                    "45 Sec",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Radio(
                      value: 1,
                      groupValue: _value2,
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          _value2 = value as int?;
                        });
                      }),
                  Radio(
                      value: 2,
                      groupValue: _value2,
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          _value2 = value as int?;
                        });
                      }),
                  Radio(
                      value: 3,
                      groupValue: _value2,
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          _value2 = value as int?;
                        });
                      }),
                ],
              ),
              Text(
                "Set up a poll",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Poll question:",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 250.0,
                      height: 30.0,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: loginPageInputDecoration(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Number of poll options:",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 34,
                    height: 13,
                    color: fTextFieldColor,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isExpanded: true,
                          icon: Padding(
                            padding:
                                const EdgeInsets.only(top: 3.0, right: 2.0),
                            child:
                                Image.asset("assets/images/dropdownarrow.png"),
                          ),
                          style: GoogleFonts.nunito(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.black),
                          iconEnabledColor: Colors.black,
                          value: valueChoose,
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose = newValue as String?;
                            });
                          },
                          items: listItem.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Poll options:",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "1.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 190.0,
                        height: 30.0,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: loginPageInputDecoration(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 65,
                  ),
                  Text(
                    "2.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 190.0,
                    height: 30.0,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: loginPageInputDecoration(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: 201,
                height: 13,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Start Poll",
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(fPollBtnColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ))),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Change over capacity Password:",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                    width: 5,
                  ),
                  SizedBox(
                    width: 117.0,
                    height: 30.0,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: loginPageInputDecoration(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 79,
                    height: 13,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Change",
                        style: GoogleFonts.nunito(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(fPollBtnColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ))),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          )),
    ));
  }
}
