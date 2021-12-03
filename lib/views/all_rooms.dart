import 'package:cookup/constants/app_routes.dart';
import 'package:cookup/model/message_model.dart';
import 'package:cookup/views/tcu_profile.dart';
import 'package:cookup/widget/all_room_bottom.dart';
import 'package:cookup/widget/app_icons.dart';
import 'package:cookup/widget/appp_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'feed_room_setting_option.dart';

class AllRooms extends StatefulWidget {
  const AllRooms({Key? key}) : super(key: key);

  @override
  _AllRoomsState createState() => _AllRoomsState();
}

class _AllRoomsState extends State<AllRooms> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BootomForAllRoom(),
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
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FeedRoomSettingOption()));
                          },
                          child: Image.asset("assets/images/Law Book.png")),
                      SizedBox(
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
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: MyText(
                "Runtime: 22m",
                textAlign: TextAlign.right,
                color: Colors.green,
              ),
            ),
            Container(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
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
                          MyText(
                            "Sports Talk Syndicated",
                            color: Color(0xff868383),
                            fontSize: 14,
                          ),
                          // SizedBox(
                          //   width: 3,
                          // ),
                          Image(image: AssetImage("assets/images/dish.png")),
                          MyText(
                            "126",
                            color: Color(0xff787777),
                          ),
                          Image(image: AssetImage("assets/images/soup.png")),

                          Image(image: AssetImage("assets/images/div.png")),

                          // SizedBox(
                          //   width: 10,
                          // ),
                          MyText(
                            "26",
                            color: Color(0xff787777),
                          ),
                          Image(image: AssetImage("assets/images/dish.png")),
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
                    Container(
                      width: 280,
                      height: 30,
                      child: Row(
                        children: [
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
                    Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      child: GridView.builder(
                          itemCount: UserProfile.UserProfileDetailsList.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
            SizedBox(
              height: 10,
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
                  child: MyText(
                    "Followed by the Speakers",
                    color: Colors.black,
                    textAlign: TextAlign.center,
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
                          return Column(
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
