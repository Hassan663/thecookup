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
              height: 50,
              width: 170,
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
                Image.asset("assets/images/wifi.png"),
                Image.asset("assets/images/Plus.png"),
                Image.asset("assets/images/hand1.png"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
