import 'package:cookup/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/calender.png")),
                        IconButton(
                            onPressed: () {},
                            icon:
                                Image.asset("assets/images/notifications.png")),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/searchicon.png")),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/invite.png")),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/setting.png")),
                      ],
                    ),
                  ),

                  Container(
                    height: 26,
                    margin: const EdgeInsets.only(top: 28.8, left: 14.4),
                    child: DefaultTabController(
                        length: 3,
                        child: TabBar(
                            labelPadding:
                                const EdgeInsets.only(left: 14.4, right: 14.4),
                            indicatorSize: TabBarIndicatorSize.tab,
                            // indicatorPadding: EdgeInsets.only(left: 59,right: 58),
                            labelColor: Colors.black,
                            // unselectedLabelColor: const Color(0xFF8a8a8a),
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
                              Container(
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
                            ])),
                  ),
                  Text(
                    "Group  DAILY Schedule",
                    style: GoogleFonts.nunito(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: Colors.white),
                  ),
                  // ListView.builder(
                  //   itemCount: CatalogModel.items.length,
                  //     itemBuilder: (context,index){
                  //     return ItemWidget(item: CatalogModel.items[index],);
                  //     }
                  // )
                  // DefaultTabController(length: length, child: child)
                ],
              ),
            ),
          ),
        ));
  }
}
