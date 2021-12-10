import 'package:flutter/material.dart';

class BottomToolbar extends StatelessWidget {
  const BottomToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Image.asset("assets/images/cookp.png"),
      Column(children: const [
        Icon(Icons.search, color: Colors.white, size: 25),
        Text(
          "Discover",
          style: TextStyle(color: Colors.white, fontSize: 10),
        )
      ]),
      Column(children: [
        Container(
            width: 30,
            height: 30,
            decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.red)),
        const Text("Dine In",
            style: TextStyle(color: Colors.white, fontSize: 10))
      ]),
      Column(children: [
        Image.asset("assets/images/message.png"),
        const Text("Inbox", style: TextStyle(color: Colors.white, fontSize: 10))
      ]),
      ClipOval(
          child: Image.asset(
            "assets/images/kahari.png",
            width: 30,
            height: 30,
          ))
    ]);
  }
}
