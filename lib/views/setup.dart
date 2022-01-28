import 'package:cookup/controller/auth/setup_controller.dart';

// import 'package:cookup/views/profile_pic_shape.dart';
// import 'package:cookup/views/sign_up_code.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SetupScreen extends StatelessWidget {
  const SetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SetupController>(
      init: SetupController(),
      builder: (_) {
        return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/setupbg.png"),
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
                    : ConstrainedBox(
                        constraints: BoxConstraints.expand(
                          width: Get.width,
                          height: Get.height / 0.1,
                        ),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 5),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: IconButton(
                                    onPressed: () {
                                      Get.back();
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //         const CodeScreen()));
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
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
                              const SizedBox(
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
                                    child: SizedBox(
                                      width: 120,
                                      height: 30,
                                      child: TextFormField(
                                        controller: _.first,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.enforced,
                                        keyboardType: TextInputType.name,
                                        decoration: loginPageInputDecoration(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6.0),
                                    child: SizedBox(
                                      width: 120.0,
                                      height: 30.0,
                                      child: TextFormField(
                                        controller: _.last,
                                        keyboardType: TextInputType.name,
                                        decoration: loginPageInputDecoration(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30.0, top: 29),
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
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: loginPageInputDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 43.0, top: 15),
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
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    SizedBox(
                                      width: 89.0,
                                      height: 30.0,
                                      child: TextFormField(
                                        controller: _.dob,
                                        keyboardType: TextInputType.number,
                                        decoration: loginPageInputDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
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
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: 182.0,
                                height: 30.0,
                                child: TextFormField(
                                  controller: _.username,
                                  keyboardType: TextInputType.name,
                                  decoration: loginPageInputDecoration(),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "PhoneNo",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: 182.0,
                                height: 30.0,
                                child: TextFormField(
                                  controller: _.phone,
                                  keyboardType: TextInputType.phone,
                                  decoration: loginPageInputDecoration(),
                                ),
                              ),
                              const SizedBox(
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
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: 182.0,
                                height: 30.0,
                                child: TextFormField(
                                  controller: _.password,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: loginPageInputDecoration(),
                                ),
                              ),
                              const SizedBox(
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
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: 182.0,
                                height: 30.0,
                                child: TextFormField(
                                  controller: _.confirmpassword,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: loginPageInputDecoration(),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _.signup();
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //         const ProfilePicShapeScreen()));
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/advancebtn.png"))),
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
                              ).marginOnly(bottom: 20.0),
                            ],
                          ),
                        ),
                      ),
              ),
            ));
      },
    );
  }
}
