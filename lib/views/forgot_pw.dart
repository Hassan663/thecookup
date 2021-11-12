import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/login.dart';
import 'package:cookup/views/sign_up_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                                    builder: (context) => const LoginScreen()));
                          },
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Forgot\nPassword?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 130),
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
                        height: 28.0,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              fillColor: fTextFieldColor,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: 127,
                  height: 16,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CodeScreen()));
                    },
                    child: Text(
                      "Send Code",
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(fTextFieldColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                side: BorderSide(color: Colors.white,width: 1.0)))),
                  ),
                ),

                SizedBox(
                  height: 24,
                ),

                Text(
                  "Or",
                  style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 30),
                  child: Row(
                    children: [
                      Text(
                        "Phone #:",
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
                        height: 28.0,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              fillColor: fTextFieldColor,
                              filled: true),
                        ),
                      ),
                    ],
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
                            builder: (context) => const CodeScreen()));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/star.png"))),
                    height: 59,
                    width: 67,
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Send\ncode",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )

    );
  }
}
