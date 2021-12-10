import 'package:cookup/views/feed.dart';
import 'package:cookup/views/tcu_profile.dart';
import 'package:cookup/widget/app_icons.dart';
import 'package:cookup/widget/appp_text_widget.dart';
import 'package:flutter/material.dart';

class BootomBr extends StatelessWidget {
  const BootomBr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.36,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconClass(
                    iconData: Icons.meeting_room,
                    iconColor: Colors.black,
                  ),
                  MyText(
                    "Exit",
                    color: Colors.black,
                  ),
                  IconClass(
                    iconData: Icons.logout,
                    iconColor: Colors.black,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Feed()));
                    },
                    child: Image.asset("assets/images/wifi.png")),
                Image.asset("assets/images/wifi.png"),
                Image.asset("assets/images/Plus.png"),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyProfile()));
                    },
                    child: Image.asset("assets/images/hand1.png")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
