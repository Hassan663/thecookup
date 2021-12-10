import 'package:cookup/widget/app_icons.dart';
import 'package:cookup/widget/appp_text_widget.dart';
import 'package:cookup/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MiniScreen extends StatefulWidget {
  const MiniScreen({Key? key}) : super(key: key);

  @override
  _MiniScreenState createState() => _MiniScreenState();
}

class _MiniScreenState extends State<MiniScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      bottomNavigationBar: const BootomBr(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/codebg.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
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
                      const MyText(
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
                  const MyText(
                    "Runtime: 22m",
                    textAlign: TextAlign.right,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.69,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.9,
                    ),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                content: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                  ),
                                  width: 70,
                                  height: 150,
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: const MyText(
                                          "Mini Screen",
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                        EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: Colors.black,
                                          height: 2,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: const MyText(
                                          "Full Screen",
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                        EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: Colors.black,
                                          height: 2,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: const MyText(
                                          "Go to chat",
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                        EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: Colors.black,
                                          height: 2,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: const MyText(
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
                        // alignment: Alignment.topLeft,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Upload Pic/Vid/Docu+",
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff6B4646)),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            ))),
                  ),
                ),
                Container(
                  width: 100,
                  height: 20,
                  child: ElevatedButton(
                    onPressed: () {
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
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
