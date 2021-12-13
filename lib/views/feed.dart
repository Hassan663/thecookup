import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/message_model.dart';
import 'package:cookup/widget/app_icons.dart';
import 'package:cookup/widget/appp_text_widget.dart';
import 'package:cookup/widget/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
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
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken),
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
                                        onTap: () {
                                        },
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
                    onPressed: () {},
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

            Visibility(
              visible: false,
              child: Container(
                margin: const EdgeInsets.only(left: 14, right: 14, top: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: fSearchFieldColor),
                child: TextField(
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  style: GoogleFonts.robotoSlab(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 8),
                      border: InputBorder.none,
                      hintText: 'Enter text...',
                      hintStyle: GoogleFonts.robotoSlab(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                ),
              ),
            ),
            Visibility(
              visible: false,
              child: Padding(
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
                            itemCount:
                                UserProfile.UserProfileDetailsList.length,
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
            ),
            const SizedBox(
              height: 10,
            ),
            Visibility(
              visible: false,
              child: Column(
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
            ),
          ],
        ),
      ),
    );
  }
}
