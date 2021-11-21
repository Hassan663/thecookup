import 'package:cookup/constants/app_routes.dart';
import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/message_model.dart';
import 'package:cookup/widget/appp_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class InstantMessage extends StatefulWidget {
  const InstantMessage({Key? key}) : super(key: key);

  @override
  _InstantMessageState createState() => _InstantMessageState();
}

class _InstantMessageState extends State<InstantMessage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/codebg.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset("assets/images/notifications.png"),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset("assets/images/calender.png"),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset("assets/images/invite.png"),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset("assets/images/setting.png")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        height: 2,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: MyText(
                          "Previous Chat",
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        height: 2,
                      )),
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                    buildMessageRow("Ellisha", "assets/images/kahari.png",
                        "Invite to room", () {}, () {}),
                    SizedBox(
                      height: 20,
                    ),
                    buildMessageRow("Imani", "assets/images/kahari.png",
                        "Invite to room", () {}, () {}),
                    SizedBox(
                      height: 20,
                    ),
                    buildMessageRow("Andrey", "assets/images/kahari.png",
                        "Invite to room", () {}, () {}),
                    Row(children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        height: 2,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: MyText(
                          "Open New Msg",
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        height: 2,
                      )),
                    ]),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/searchicon.png",
                            height: 30,
                          ),
                          Flexible(
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 14,
                                right: 14,
                              ),
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: fSearchFieldColor),
                              child: TextField(
                                maxLengthEnforcement:
                                    MaxLengthEnforcement.enforced,
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(
                                        left: 30, bottom: 15),
                                    border: InputBorder.none,
                                    hintText: 'Find Interest that fits you',
                                    hintStyle: GoogleFonts.robotoSlab(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        height: 2,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: MyText(
                          "Active People",
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        height: 2,
                      )),
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: GridView.builder(
                          itemCount: UserProfile.UserProfileDetailsList.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 2,
                                  mainAxisExtent: 100,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                AppRoutes.push(
                                    context,
                                    UserProfile
                                        .UserProfileDetailsList[index].page);
                              },
                              child: Column(
                                children: [
                                  ClipOval(
                                      child: Image.asset(UserProfile
                                          .UserProfileDetailsList[index]
                                          .imagepath!)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  MyText(UserProfile
                                      .UserProfileDetailsList[index].name!)
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget buildMessageRow(String title, String imagePath, String subtitle,
      VoidCallback onchatPressed, VoidCallback onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(child: Image.asset(imagePath)),
            SizedBox(
              width: 10,
            ),
            MyText(
              title,
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Image.asset("assets/images/Chat.png"),
            InkWell(onTap: onchatPressed, child: MyText("OpenChat"))
          ],
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white),
          child: MyText(
            subtitle,
            color: Color(0xff28717B),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
