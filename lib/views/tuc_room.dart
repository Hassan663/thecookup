import 'package:cookup/constants/app_routes.dart';
import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/message_model.dart';
import 'package:cookup/views/feed.dart';
import 'package:cookup/views/sign_up_code.dart';
import 'package:cookup/widget/app_icons.dart';
import 'package:cookup/widget/appp_text_widget.dart';
import 'package:cookup/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TucRoom extends StatefulWidget {
  const TucRoom({Key? key}) : super(key: key);

  @override
  _TucRoomState createState() => _TucRoomState();
}

class _TucRoomState extends State<TucRoom> {
  bool isSelected = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isVideoVisible = false;
  _updateState(bool isvalue) {
    setState(() {
      isVideoVisible = isvalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BootomBr(),
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
                  Row(
                    children: [
                      IconClass(
                        iconColor: Colors.white,
                        iconSize: 30,
                        iconData: Icons.chevron_left,
                      ),
                      MyText(
                        "All Rooms",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                  Image.asset("assets/images/notifications.png"),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            _updateState(true);
                          },
                          onDoubleTap: () {
                            _updateState(false);
                          },
                          child: Image.asset("assets/images/Law Book.png")),
                      SizedBox(
                        width: 10,
                      ),
                      ClipOval(
                          child: Image.asset(
                        "assets/images/kahari.png",
                        height: 40,
                      )),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: MyText(
                "Runtime: 22m",
                textAlign: TextAlign.right,
                color: Colors.green,
              ),
            ),
            isVideoVisible == true
                ? Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            color: Colors.white.withOpacity(0.4),
                            child: Image.asset("assets/images/background.png",
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                width: MediaQuery.of(context).size.width),
                          ),
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
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          width: 70,
                                          height: 120,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: MyText(
                                                  "Mini Screen",
                                                  color: Colors.green,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                child: Divider(
                                                  color: Colors.black,
                                                  height: 2,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  AppRoutes.push(
                                                      context, Feed());
                                                },
                                                child: MyText(
                                                  "Full Screen",
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                                          builder: (context) =>
                                              const CodeScreen()));
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
                                        MaterialStateProperty.all<Color>(
                                            fTextFieldColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100.0)),
                                            side: BorderSide(
                                                color: Colors.white,
                                                width: 1.0)))),
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
                                          builder: (context) =>
                                              const CodeScreen()));
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
                                        MaterialStateProperty.all<Color>(
                                            fTextFieldColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100.0)),
                                            side: BorderSide(
                                                color: Colors.white,
                                                width: 1.0)))),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            "Sports Talk Syndicated",
                            color: Color(0xff868383),
                            fontSize: 14,
                          ),
                          Row(
                            children: [
                              MyText(
                                "126",
                                color: Color(0xff787777),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              MyText(
                                "26",
                                color: Color(0xff787777),
                              ),
                              IconClass(
                                iconColor: Color(0xff787777),
                                iconData: Icons.school_outlined,
                              ),
                              IconClass(
                                iconColor: Color(0xff787777),
                                iconData: Icons.more_horiz_outlined,
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyText(
                            "Talking how to design The Cook Up in your Figma",
                            color: Colors.black,
                            fontSize: 14,
                            textAlign: TextAlign.left,
                          ),
                          IconClass(
                            iconColor: Colors.black,
                            iconData: Icons.video_call,
                          )
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.27,
                        child: GridView.builder(
                            itemCount:
                                UserProfile.UserProfileDetailsList.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 2,
                              mainAxisExtent: 100,
                              crossAxisSpacing: 10.0,
                              //mainAxisSpacing: 10.0
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  AppRoutes.push(
                                      context,
                                      UserProfile
                                          .UserProfileDetailsList[index].page);
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipOval(
                                        child: Image.asset(UserProfile
                                            .UserProfileDetailsList[index]
                                            .imagepath!)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/images/location.png"),
                                          MyText(UserProfile
                                              .UserProfileDetailsList[index]
                                              .name!),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText(
                      "Followed by the Speakers",
                      color: Colors.black,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: GridView.builder(
                        itemCount: UserProfile.UserProfileDetailsList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 2,
                            mainAxisExtent: 100,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              AppRoutes.push(
                                  context,
                                  UserProfile
                                      .UserProfileDetailsList[index].page);
                            },
                            child: Column(
                              children: [
                                ClipOval(
                                    child: Image.asset(UserProfile
                                        .UserProfileDetailsList[index]
                                        .imagepath!)),
                                SizedBox(
                                  height: 10,
                                ),
                                MyText(UserProfile
                                    .UserProfileDetailsList[index].name!)
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
