import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/signup.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgot_pw.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover,
          )),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Image.asset("assets/images/logo.png"),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
                  child: robotoFontText(
                      "Thank You For Joining The Cook Up where we bring discussion "
                          "to a new level enjoy the app and share with friends"),
                  // child: Text(
                  //   "Thank You For Joining The Cook Up where we bring discussion "
                  //   "to a new level enjoy the app and share with friends",
                  //   style: GoogleFonts.roboto(
                  //       fontSize: 24,
                  //       fontStyle: FontStyle.normal,
                  //       fontWeight: FontWeight.w700,
                  //       color: Colors.white),
                  //   textAlign: TextAlign.center,
                  // ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "E-M@il",
                  style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  margin: EdgeInsets.only(left: 96, right: 96),
                  width: 171.0,
                  height: 30.0,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: loginPageInputDecoration(),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Password",
                  style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 171.0,
                  height: 30.0,
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: loginPageInputDecoration(),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                SizedBox(
                  width: 91,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(fButtonLoginColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                                side: BorderSide(color: Colors.black)))),
                  ),
                ),
                const SizedBox(
                  height: 37,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen()));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/triangle.png"))),
                    height: 62,
                    width: 86,
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        "For got\nPassword?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: Text(
                        "Register",
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: fTextColor),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 165.0),
                  child: Image.asset("assets/images/hand.png"),
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



