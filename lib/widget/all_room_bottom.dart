import 'package:cookup/views/room_option_list.dart';
import 'package:flutter/material.dart';

import 'app_icons.dart';
import 'appp_text_widget.dart';

class BootomForAllRoom extends StatefulWidget {
  const BootomForAllRoom({Key? key}) : super(key: key);

  @override
  _BootomForAllRoomState createState() => _BootomForAllRoomState();
}

class _BootomForAllRoomState extends State<BootomForAllRoom> {
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
                    onTap: () {},
                    child: Image.asset("assets/images/clipboard.png",width: 28,height: 28,)),
                GestureDetector(
                    onTap: () {Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RoomOptionList()));},
                    child: Image.asset("assets/images/menuu.png",width:50)),
                Image.asset("assets/images/Plus.png",width: 40,),
                Image.asset("assets/images/mic.png",width: 60,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
