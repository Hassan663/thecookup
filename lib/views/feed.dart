import 'package:cookup/constants/app_routes.dart';
import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/sign_up_code.dart';
import 'package:cookup/views/tuc_room.dart';
import 'package:cookup/widget/app_icons.dart';
import 'package:cookup/widget/appp_text_widget.dart';
import 'package:cookup/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    bool isSelected4 = false;
    bool isSelected1 = false;
    bool isSelected2 = false;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      bottomNavigationBar: BootomBr(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/codebg.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconClass(
                    iconColor: Colors.white,
                    iconSize: 30,
                    iconData: Icons.chevron_left,
                  ),
                  Row(
                    children: [
                      MyText(
                        "Feed",
                        color: Colors.black,
                        fontSize: 10,
                      ),
                      IconClass(
                        iconColor: Colors.black,
                        iconData: Icons.wifi,
                        iconSize: 20,
                      )
                    ],
                  ),
                  MyText(
                    "Runtime: 22m",
                    textAlign: TextAlign.right,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.95,
                        top: MediaQuery.of(context).size.height * 0.1),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                content: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  width: 70,
                                  height: 150,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          AppRoutes.push(context, TucRoom());
                                        },
                                        child: MyText(
                                          "Mini Screen",
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Divider(
                                          color: Colors.black,
                                          height: 2,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: MyText(
                                          "Full Screen",
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Divider(
                                          color: Colors.black,
                                          height: 2,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: MyText(
                                          "Go to chat",
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Divider(
                                          color: Colors.black,
                                          height: 2,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: MyText(
                                          "Hide",
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Image.asset(
                        "assets/images/feed.png",
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 127,
                    height: 25,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CodeScreen()));
                      },
                      child: Text(
                        "Upload Pic/Vid/Docu+",
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100.0)),
                                      side: BorderSide(
                                          color: Colors.white, width: 1.0)))),
                    ),
                  ),
                  SizedBox(
                    width: 127,
                    height: 28,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CodeScreen()));
                      },
                      child: Text(
                        "Add a Link",
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100.0)),
                                      side: BorderSide(
                                          color: Colors.white, width: 1.0)))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
