import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/controller/auth/verifycode_controller.dart';
import 'package:cookup/views/setup.dart';
import 'package:cookup/views/signup.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupCodeController>(
      init: SignupCodeController(),
      builder: (_) {
        return Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/codebg.png"),
                  fit: BoxFit.cover)),
          child: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: _.isLoading
                    ? Center(
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Center(
                            child: LoadingAnimationWidget.discreteCircle(
                                color: Colors.green, size: 50),
                          ),
                        ),
                      )
                    : SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SignUpScreen()));
                                      },
                                      icon: const Icon(Icons.arrow_back_ios,
                                          color: Colors.white))),
                            ),
                            const SizedBox(
                              height: 150,
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
                            const SizedBox(
                              height: 80,
                            ),
                            SizedBox(
                              width: 300,
                              height: 61,
                              child: TextFormField(
                                controller: _.code,
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
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            fSendAgainButtonColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                            side: BorderSide(
                                                color: Colors.black)))),
                              ),
                            ),
                            const SizedBox(
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
                                          builder: (context) =>
                                              const SetupScreen()));
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
                                        MaterialStateProperty.all<Color>(
                                            fContButtonColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            side: BorderSide(
                                                color: Colors.black)))),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      )),
          ),
        );
      },
    );
  }
}
