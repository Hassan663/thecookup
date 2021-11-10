import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/setup.dart';
import 'package:cookup/views/signup.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  _CodeScreenState createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/codebg.png"),
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
                                    builder: (context) => const SignUpScreen()));
                          },
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
                ),
                SizedBox(
                  height: 160,
                ),
                Text(
                  "Enter Code Sent",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 80,
                ),
                SizedBox(
                  width: 300,
                  height: 61,
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: enterCodeInputDecoration()),
                ),
                SizedBox(
                  width: 142,
                  height: 27,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Send again",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            fSendAgainButtonColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                side: BorderSide(color: Colors.black)))),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                SizedBox(
                  width: 186,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SetupScreen()));
                    },
                    child: Text(
                      "Continue",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(fContButtonColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                side: BorderSide(color: Colors.black)))),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
