import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/controller/auth/forgotpassword_controller.dart';
import 'package:cookup/views/login.dart';
import 'package:cookup/views/sign_up_code.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotpasswordController>(
      init: ForgotpasswordController(),
      builder: (_) {
        return Container(
            decoration: backgroundImage("assets/images/setupbg.png"),
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
                                        Get.back();
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //         const LoginScreen()));
                                      },
                                      icon: const Icon(Icons.arrow_back_ios,
                                          color: Colors.white))),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            robotoFont36Text("Forgot\nPassword?"),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, top: 130),
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
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  SizedBox(
                                    width: 182.0,
                                    height: 30.0,
                                    child: TextFormField(
                                      controller: _.email,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: loginPageInputDecoration(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              width: 127,
                              height: 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  _.forgotfunction();
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => const CodeScreen()));
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
                                        MaterialStateProperty.all<Color>(
                                            fTextFieldColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0)),
                                            side: BorderSide(
                                                color: Colors.white,
                                                width: 1.0)))),
                              ),
                            ),
                            const SizedBox(
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
                              padding:
                                  const EdgeInsets.only(left: 24.0, top: 30),
                              child: Row(
                                children: [
                                  Text(
                                    "OPT #:",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 45,
                                  ),
                                  SizedBox(
                                    width: 182.0,
                                    height: 30.0,
                                    child: TextFormField(
                                      controller: _.opt,
                                      keyboardType: TextInputType.number,
                                      decoration: loginPageInputDecoration(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 24.0, top: 30),
                              child: Row(
                                children: [
                                  Text(
                                    "Password #:",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  SizedBox(
                                    width: 182.0,
                                    height: 30.0,
                                    child: TextFormField(
                                      controller: _.password,
                                      keyboardType: TextInputType.phone,
                                      decoration: loginPageInputDecoration(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                _.recoverfunction();
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => const CodeScreen()));
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/star.png"))),
                                height: 63,
                                width: 75,
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
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
              ),
            ));
      },
    );
  }
}
