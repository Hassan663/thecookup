import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/controller/auth/login_controller.dart';
import 'package:cookup/views/bottom_nav_bar.dart';
import 'package:cookup/views/setup.dart';
import 'package:cookup/views/signup.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'forgot_pw.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) {
        return Container(
          decoration: backgroundImage("assets/images/bg.png"),
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
                            padding:
                                const EdgeInsets.only(left: 50.0, right: 50.0),
                            child: Image.asset("assets/images/logo.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30.0, top: 20.0, right: 30.0),
                            child: robotoFont24Text(
                                "Thank You For Joining The Cook Up where we bring discussion "
                                "to a new level enjoy the app and share with friends"),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          robotoFont18Text("E-M@il"),
                          const SizedBox(
                            height: 18,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 96, right: 96),
                            width: 171.0,
                            height: 30.0,
                            child: TextFormField(
                              controller: _.email,
                              keyboardType: TextInputType.emailAddress,
                              decoration: loginPageInputDecoration(),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          robotoFont18Text("Password"),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 171.0,
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
                          SizedBox(
                            width: 91,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                _.login();
                              },
                              child: robotoFont18Text("Login"),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          fButtonLoginColor),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero,
                                          side: BorderSide(
                                              color: Colors.black)))),
                            ),
                          ),
                          const SizedBox(
                            height: 37,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const ForgotPasswordScreen());
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //         const ForgotPasswordScreen()));
                            },
                            child: Container(
                              decoration:
                                  backgroundImage("assets/images/triangle.png"),
                              height: 62,
                              width: 86,
                              child: Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: robotoFont11Text("For got\nPassword?"),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              robotoFont14Text("Don???t have an account?"),
                              const SizedBox(
                                width: 16,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Get.to(() => const SetupScreen());
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => const SignUpScreen()));
                                  },
                                  child: registerText("Register")),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.to(() => const SetupScreen());
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 165.0),
                              child: Image.asset("assets/images/hand.png"),
                            ),
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
      },
    );
  }
}
