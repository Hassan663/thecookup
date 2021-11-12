import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/login.dart';
import 'package:cookup/views/sign_up_code.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/signupbg.png"),
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
                height: 90,
              ),
              Text(
                "Sign up Enter # ",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white),
              ),
              SizedBox(
                height: 17,
              ),
              Image.asset("assets/images/cooklogo.png"),
              SizedBox(
                width: 259,
                height: 52,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: signupPageInputDecoration("Enter #"),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/spoon.png"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CodeScreen()));
                    },
                    child: ClipOval(
                        child: Container(
                      height: 60.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: fOvalShapeColor,
                        border: Border.all(color: Colors.black, width: 1.0),
                        borderRadius:
                            new BorderRadius.all(Radius.elliptical(80, 60)),
                      ),
                      child: Center(
                        child: Text(
                          "Go",
                          style: GoogleFonts.roboto(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
                  ),
                  Image.asset("assets/images/fork.png"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}