import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/home.dart';
import 'package:cookup/views/instant_message.dart';
import 'package:cookup/views/open_room.dart';
import 'package:cookup/views/tcu_profile.dart';
import 'package:cookup/views/tuc_room.dart';
import 'package:cookup/views/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: TabBarView(
            controller: _tabController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Center(child: HomeScreen()),
              Center(child: Text("2")),
              Center(child: Text("3")),
              InstantMessage(),
              Center(child: Text("5")),
            ],
          ),
          bottomNavigationBar: Container(
            height: 80,
            decoration: BoxDecoration(
                color: fRoomTitleBoxColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: TabBar(
              controller: _tabController,
              automaticIndicatorColorAdjustment: false,
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  icon: Image.asset("assets/images/cookp.png"),
                ),
                Tab(
                  icon: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TikTokVideos()));
                      },
                      child: Image.asset("assets/images/buffetvideos.png")),
                ),
                Tab(
                  icon: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => OpenRoom());
                      },
                      child: Image.asset("assets/images/grp.png")),
                ),
                Tab(
                  icon: Image.asset("assets/images/msg.png"),
                ),
                Tab(
                  icon: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfile()));
                      },
                      child: ClipOval(
                          child: Image.asset("assets/images/kahari.png"))),
                )
              ],
            ),
          )),
    );
  }
}
