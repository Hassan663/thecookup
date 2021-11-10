import 'package:cookup/views/interest.dart';
import 'package:cookup/views/sign_up_code.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({Key? key}) : super(key: key);

  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
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
                  padding: EdgeInsets.only(left: 20, top: 40),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: IconButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CodeScreen()));
                          },
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Set up",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 55,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 130.0),
                      child: Text(
                        "First",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Text(
                        "Last",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        "Name:",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        width: 120,
                        height: 28,
                        child: TextFormField(
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          keyboardType: TextInputType.name,
                          decoration: loginPageInputDecoration(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: SizedBox(
                        width: 120.0,
                        height: 28.0,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: loginPageInputDecoration(),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 29),
                  child: Row(
                    children: [
                      Text(
                        "E-m@il:",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        width: 182.0,
                        height: 24.0,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: loginPageInputDecoration(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 43.0, top: 15),
                  child: Row(
                    children: [
                      Text(
                        "DOB:",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      SizedBox(
                        width: 89.0,
                        height: 28.0,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: loginPageInputDecoration(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Username",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: 182.0,
                  height: 24.0,
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: loginPageInputDecoration(),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "Password",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: 182.0,
                  height: 24.0,
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: loginPageInputDecoration(),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "Confirm Password",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: 182.0,
                  height: 24.0,
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: loginPageInputDecoration(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InterestScreen()));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/advancebtn.png"))),
                    height: 104,
                    width: 105,
                    child: Container(
                      margin: const EdgeInsets.only(top: 44),
                      child: Text(
                        "Advance",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
