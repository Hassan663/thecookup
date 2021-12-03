import 'package:cookup/constants/app_routes.dart';
import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/message_model.dart';
import 'package:cookup/views/all_rooms.dart';
import 'package:cookup/views/discover_search.dart';
import 'package:cookup/widget/appp_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'open_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/codebg.png"),
              fit: BoxFit.cover)),
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            // bottomNavigationBar: BottomNav(),
            body: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OpenCalendar()));
                              },
                              icon: Image.asset("assets/images/calender.png")),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                  "assets/images/notifications.png")),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Discover()));
                              },
                              icon:
                                  Image.asset("assets/images/searchicon.png")),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/images/invite.png")),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/images/setting.png")),
                        ])),
                Container(
                  margin:
                      const EdgeInsets.only(top: 28.8, left: 14.4, right: 14.4),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TabBar(
                        controller: _tabController,
                        labelPadding:
                            const EdgeInsets.only(left: 14.4, right: 14.4),
                        automaticIndicatorColorAdjustment: false,
                        labelColor: Colors.black,
                        indicatorColor: Colors.transparent,
                        labelStyle: GoogleFonts.nunito(
                            fontSize: 12, fontWeight: FontWeight.w700),
                        tabs: [
                          Container(
                            width: 90,
                            height: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: fTabsColor,
                                border: Border.all(color: Colors.black)),
                            child: const Tab(
                              child: Text(
                                "Open Rooms",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            width: 90,
                            height: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: fTabsColor,
                                border: Border.all(color: Colors.black)),
                            child: const Tab(
                              child: Text(
                                "Paid Rooms",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AllRooms()));
                            },
                            child: Container(
                              width: 90,
                              height: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: fTabsColor,
                                  border: Border.all(color: Colors.black)),
                              child: const Tab(
                                child: Text(
                                  "All Rooms",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.67,
                        child: TabBarView(
                          physics: NeverScrollableScrollPhysics(),
                          controller: _tabController,
                          children: [
                            ListView(
                              children: [
                                const Center(
                                  child: MyText(
                                    "Group  DAILY Schedule",
                                    textAlign: TextAlign.right,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/background.png"),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, top: 8),
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
                                                  image: AssetImage(
                                                      "assets/images/dish.png")),
                                              const MyText(
                                                "126",
                                                color: Color(0xff787777),
                                              ),
                                              const Image(
                                                  image: AssetImage(
                                                      "assets/images/soup.png")),

                                              const Image(
                                                  image: AssetImage(
                                                      "assets/images/div.png")),

                                              // SizedBox(
                                              //   width: 10,
                                              // ),
                                              const MyText(
                                                "26",
                                                color: Color(0xff787777),
                                              ),
                                              const Image(
                                                  image: AssetImage(
                                                      "assets/images/dish.png")),
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.27,
                                          child: GridView.builder(
                                              itemCount: UserProfile
                                                  .UserProfileDetailsList
                                                  .length,
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                                childAspectRatio: 2,
                                                mainAxisExtent: 100,
                                                crossAxisSpacing: 10.0,
                                                //mainAxisSpacing: 10.0
                                              ),
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return InkWell(
                                                  onTap: () {
                                                    AppRoutes.push(
                                                        context,
                                                        UserProfile
                                                            .UserProfileDetailsList[
                                                                index]
                                                            .page);
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      ClipOval(
                                                          child: Image.asset(
                                                              UserProfile
                                                                  .UserProfileDetailsList[
                                                                      index]
                                                                  .imagepath!)),
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                              "assets/images/location.png"),
                                                          MyText(UserProfile
                                                              .UserProfileDetailsList[
                                                                  index]
                                                              .name!),
                                                        ],
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
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: GridView.builder(
                                            itemCount: UserProfile
                                                .UserProfileDetailsList.length,
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    childAspectRatio: 2,
                                                    mainAxisExtent: 100,
                                                    crossAxisSpacing: 10.0,
                                                    mainAxisSpacing: 10.0),
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return InkWell(
                                                onTap: () {
                                                  AppRoutes.push(
                                                      context,
                                                      UserProfile
                                                          .UserProfileDetailsList[
                                                              index]
                                                          .page);
                                                },
                                                child: Column(
                                                  children: [
                                                    ClipOval(
                                                        child: Image.asset(
                                                            UserProfile
                                                                .UserProfileDetailsList[
                                                                    index]
                                                                .imagepath!)),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    MyText(UserProfile
                                                        .UserProfileDetailsList[
                                                            index]
                                                        .name!)
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
                            const Center(
                              child: Text('Display Tab 2',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const Center(
                              child: Text('Display Tab 3',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
