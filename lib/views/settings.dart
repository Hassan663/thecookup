import 'package:cookup/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/setupbg.png"),
                    fit: BoxFit.cover)),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Text(
                      "SETTINGS",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Notification",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Account",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Text(
                                "Request to be Verified",
                                style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              Image.asset("assets/images/verifiedribbon.png")
                            ],
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Interest Discussions",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Privacy Settings",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Messenger Settings",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Change Shape Settings",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/onestar.png"))),
                    height: 93,
                    width: 105,
                    child: Container(
                      margin: const EdgeInsets.only(top: 36),
                      child: Text(
                        "Subscription",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Contact Us ~ FaQs",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Terms Of Service (T.O.S.)",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Community Guide",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 380,
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Privacy Policy",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ))),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(13.0),
                    shadowColor: Color(0xFF00000040),
                    child: SizedBox(
                      width: 193,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Log Off",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(fTextFieldColor),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(13.0)),
                                    side: BorderSide(
                                        color: Colors.black, width: 1.0)
                                ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),

                ],
              ),
            )));
  }
}
