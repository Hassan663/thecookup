import 'package:cookup/constants/app_routes.dart';
import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/message_model.dart';
import 'package:cookup/views/feed.dart';
import 'package:cookup/views/sign_up_code.dart';
import 'package:cookup/views/tcu_profile.dart';
import 'package:cookup/widget/app_icons.dart';
import 'package:cookup/widget/appp_text_widget.dart';
import 'package:cookup/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feed_room_setting_option.dart';

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
      bottomNavigationBar: const BootomBr(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/codebg.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconClass(
                        iconColor: Colors.white,
                        iconData: Icons.arrow_back_ios,
                      ),
                      const MyText(
                        "All Rooms",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                  InkWell(
                      onTap: () {
                        _updateState(true);
                      },
                      onDoubleTap: () {
                        _updateState(false);
                      },
                      child: Image.asset("assets/images/notifications.png")),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FeedRoomSettingOption()));
                          },
                          child: Image.asset("assets/images/Law Book.png")),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyProfile()));
                        },
                        child: ClipOval(
                            child: Image.asset(
                          "assets/images/kahari.png",
                          height: 40,
                        )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
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
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 0),
                                        content: Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          width: 70,
                                          height: 120,
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: const MyText(
                                                  "Mini Screen",
                                                  color: Colors.green,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10),
                                                child: Divider(
                                                  color: Colors.black,
                                                  height: 2,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  AppRoutes.push(
                                                      context, const Feed());
                                                },
                                                child: const MyText(
                                                  "Full Screen",
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10),
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
                                alignment: Alignment.bottomLeft,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 8),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipOval(
                              child: Image.asset(
                            "assets/images/kahari.png",
                            height: 20,
                          )),
                          // SizedBox(
                          //   width: 3,
                          // ),
                          const MyText(
                            "Sports Talk Syndicated",
                            color: Color(0xff868383),
                            fontSize: 14,
                          ),
                          // SizedBox(
                          //   width: 3,
                          // ),
                          const Image(
                              image: AssetImage("assets/images/dish.png")),
                          const MyText(
                            "126",
                            color: Color(0xff787777),
                          ),
                          const Image(
                              image: AssetImage("assets/images/soup.png")),

                          const Image(
                              image: AssetImage("assets/images/div.png")),

                          // SizedBox(
                          //   width: 10,
                          // ),
                          const MyText(
                            "26",
                            color: Color(0xff787777),
                          ),
                          const Image(
                              image: AssetImage("assets/images/dish.png")),
                          // IconClass(
                          //   iconColor: Color(0xff787777),
                          //   iconData: Icons.school_outlined,
                          // ),
                          // IconClass(
                          //   iconColor: Color(0xff787777),
                          //   iconData: Icons.more_horiz_outlined,
                          // )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 280,
                      height: 30,
                      child: Row(
                        children: const [
                          MyText(
                            "Talking how to design The Cook Up",
                            color: Colors.black,
                            fontSize: 14,
                            textAlign: TextAlign.center,
                          ),
                          // IconClass(
                          //   iconColor: Colors.black,
                          //   iconData: Icons.video_call,
                          // )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.27,
                      child: GridView.builder(
                          itemCount: UserProfile.UserProfileDetailsList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 2,
                            mainAxisExtent: 100,
                            crossAxisSpacing: 10.0,
                            //mainAxisSpacing: 10.0
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                    child: Image.asset(UserProfile
                                        .UserProfileDetailsList[index]
                                        .imagepath!)),
                                Row(
                                  children: [
                                    Image.asset("assets/images/location.png"),
                                    MyText(UserProfile
                                        .UserProfileDetailsList[index].name!),
                                  ],
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    ),
                  ),
                  child: const Padding(
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
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 2,
                                mainAxisExtent: 100,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              ClipOval(
                                  child: Image.asset(UserProfile
                                      .UserProfileDetailsList[index]
                                      .imagepath!)),
                              const SizedBox(
                                height: 10,
                              ),
                              MyText(UserProfile
                                  .UserProfileDetailsList[index].name!)
                            ],
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
