import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/room_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoomOptionList extends StatefulWidget {
  const RoomOptionList({Key? key}) : super(key: key);

  @override
  _RoomOptionListState createState() => _RoomOptionListState();
}

class _RoomOptionListState extends State<RoomOptionList>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fRoomOptionListBgColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //         const FollowingList()));
                      },
                      icon: const Icon(Icons.arrow_back_ios,
                          color: Colors.white))),
            ),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Search Room",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: fTextFieldColor),
                  child: TextField(
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 8),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Image.asset("assets/images/menu.png"),
              ],
            ),
            Column(
              children: [
                TabBar(
                  controller: _tabController,
                  labelPadding: const EdgeInsets.only(left: 10.4, right: 10.4),
                  automaticIndicatorColorAdjustment: false,
                  indicatorColor: Colors.transparent,
                  isScrollable: true,
                  tabs: [
                    const Tab(
                      child: Text(
                        "Room List",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Tab(
                      child: Text(
                        "Speakers List",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Tab(
                      child: Text(
                        "Chat List",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Tab(
                      child: Text(
                        "Feed List",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.70,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      RoomList(),
                      const Center(
                        child: Text('Display Tab 2',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                      ),
                      const Center(
                        child: Text('Display Tab 3',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                      ),
                      const Center(
                        child: Text('Display Tab 4',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
