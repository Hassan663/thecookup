import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/widget/tik_tok_icons.dart';
import 'package:cookup/widget/upload_icon.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class TikTokVideos extends StatefulWidget {
  const TikTokVideos({Key? key}) : super(key: key);

  @override
  _TikTokVideosState createState() => _TikTokVideosState();
}

class _TikTokVideosState extends State<TikTokVideos> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        HomePage(),
        Center(
          child: Text(
            "Discover",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Upload",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "All Activity",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Profile",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget getFooter() {
    List bottomItems = [
      {"icon": TikTokIcons.home, "label": "Home", "isIcon": true},
      {"icon": TikTokIcons.search, "label": "Discover", "isIcon": true},
      {"icon": "", "label": "", "isIcon": false},
      {"icon": TikTokIcons.messages, "label": "Inbox", "isIcon": true},
      {"icon": TikTokIcons.profile, "label": "Me", "isIcon": true}
    ];

    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(color: appBgColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return bottomItems[index]['isIcon']
                ? InkWell(
                    onTap: () {
                      selectedTab(index);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          bottomItems[index]['icon'],
                          color: white,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            bottomItems[index]['label'],
                            style: const TextStyle(color: white, fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                : InkWell(
                    onTap: () {
                      selectedTab(index);
                    },
                    child: const UploadIcon());
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
