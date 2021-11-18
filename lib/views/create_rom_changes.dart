import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class RomChanges extends StatefulWidget {
  const RomChanges({Key? key}) : super(key: key);

  @override
  State<RomChanges> createState() => _RomChangesState();
}

class _RomChangesState extends State<RomChanges> {
  @override
  Widget build(BuildContext context) {
    int? _value = 1;

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/grpbg.png"),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: IconButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const LoginScreen()));
                          },
                          icon:
                              Icon(Icons.arrow_back_ios, color: Colors.white))),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Open to public",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: Colors.white),
                      ),
                      Text(
                        "Private",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: Colors.white),
                      ),
                      Text(
                        "Invite only",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Membership",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white),
                      ),

                      Radio(
                          value: 1,
                          groupValue: _value,
                          activeColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              _value = value as int?;
                            });
                          }),
                      Radio(
                          value: 2,
                          groupValue: _value,
                          activeColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              _value = value as int?;
                            });
                          }),
                      Radio(
                          value: 3,
                          groupValue: _value,
                          activeColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              _value = value as int?;
                            });
                          }),
                    ],
                  ),
                ),

                
              ],
            ),
          ),
        ));
  }
}
