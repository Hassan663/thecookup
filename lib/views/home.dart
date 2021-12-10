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
import 'open_room_list.dart';

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
                                        builder: (context) =>
                                            const OpenCalendar()));
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
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _tabController,
                          children: const [
                            OpenRoomList(),
                            Center(
                              child: Text('Display Tab 2',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Center(
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
