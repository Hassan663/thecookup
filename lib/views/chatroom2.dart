import 'package:cookup/model/chat_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/images/background.png"),
        //       fit: BoxFit.cover,
        //     )),
        child: SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios, color: Colors.white),
                    Text(
                      "Chat: THEFUTURE CLUB",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                    ClipOval(
                        child: Image.asset(
                      "assets/images/kahari.png",
                      width: 30,
                      height: 30,
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, int index) {
                    return Text(messages[index].text,style: TextStyle(

                    ),);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

// Align(
//   alignment: Alignment.topLeft,
//   child: ClipOval(
//       child: Image.asset(
//         "assets/images/kahari.png",
//         width: 75.47,
//         height: 75.47,
//       )),
// )
