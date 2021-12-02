import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/follower_list_model.dart';
import 'package:cookup/model/video_list_model.dart';
import 'package:cookup/views/create_group.dart';
import 'package:cookup/views/following_list.dart';
import 'package:cookup/views/instant_message.dart';
import 'package:cookup/views/pers_profile.dart';
import 'package:cookup/views/video_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupedProfile extends StatefulWidget {
  const GroupedProfile({Key? key}) : super(key: key);

  @override
  _GroupedProfileState createState() => _GroupedProfileState();
}

class _GroupedProfileState extends State<GroupedProfile> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/codebg.png"),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FollowingList()));
                              },
                              icon: const Icon(Icons.arrow_back_ios,
                                  color: Colors.white))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      width: 110.0,
                      height: 85.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/inked.png"),
                                fit: BoxFit.fill),
                            color: fTextFieldColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                      ),
                    ),
                    RatingBar.builder(
                      direction: Axis.horizontal,
                      itemCount: 5,
                      unratedColor: fTextFieldColor,
                      itemSize: 25,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    Text("Cook ware group",
                        style: GoogleFonts.robotoSlab(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white),
                        textAlign: TextAlign.center),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("22 Followers",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.white),
                            textAlign: TextAlign.center),
                        Image.asset("assets/images/teamrules.png"),
                        Image.asset("assets/images/groupmessage.png"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Following",
                        style: GoogleFonts.rosarivo(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: fFollowButtonColor),
                        textAlign: TextAlign.center,
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              fFollowingButtonColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(22.0)),
                                      side: BorderSide(
                                          color: fFollowingButtonBorderColor,
                                          width: 1.0)))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/twitter.png"),
                            Text("Add twitter",
                                style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/instagram.png"),
                            Text("Add instagram",
                                style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Image.asset("assets/images/snapchat.png"),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("Add snapchat",
                                    style: GoogleFonts.rosarivo(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white),
                                    textAlign: TextAlign.center),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 28.0),
                          child: Row(
                            children: [
                              Image.asset("assets/images/tiktok.png"),
                              Text("Add tik tok",
                                  style: GoogleFonts.rosarivo(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text("About",
                        style: GoogleFonts.rosarivo(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white),
                        textAlign: TextAlign.center),
                    const Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                          "We bring the best conversations on food and recipe. "
                          "new category of cuisines. Join our group and support.",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.white)),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                    DefaultTabController(
                        length: 3, // length of tabs
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                height: 40,
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width,
                                child: TabBar(
                                  indicatorPadding: const EdgeInsets.only(
                                      left: 30, right: 30),
                                  tabs: [
                                    Tab(
                                        icon: Image.asset(
                                            "assets/images/checkeduser.png")),
                                    Tab(
                                      icon: Image.asset(
                                          "assets/images/video.png"),
                                    ),
                                    Tab(
                                      icon: Image.asset(
                                          "assets/images/podcasticon.png"),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                  height: 300,
                                  child: TabBarView(
                                      physics: BouncingScrollPhysics(),
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          child: ListView.builder(
                                              itemCount: follower.length,
                                              itemBuilder: (context, index) {
                                                FollowersModel followersModel =
                                                    follower[index];
                                                return ListTile(
                                                    leading: GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        PersonProfileScreen()));
                                                      },
                                                      child: Container(
                                                        width: 60.0,
                                                        height: 120.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  followersModel
                                                                      .image),
                                                              fit: BoxFit.fill),
                                                          color:
                                                              fTextFieldColor,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius
                                                                      .circular(
                                                                          30.0)),
                                                        ),
                                                      ),
                                                    ),
                                                    title: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 25.0),
                                                      child: Text(
                                                        followersModel.name,
                                                        style: GoogleFonts
                                                            .rosarivo(
                                                                fontStyle:
                                                                    FontStyle
                                                                        .normal,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                        followersModel.desc,
                                                        style:
                                                            GoogleFonts.roboto(
                                                                fontStyle:
                                                                    FontStyle
                                                                        .normal,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .white)),
                                                    trailing: ElevatedButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          // pressAttention = !pressAttention;
                                                        });
                                                      },
                                                      child: Text(
                                                        followersModel
                                                            .followButton,
                                                        style: GoogleFonts.rosarivo(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14,
                                                            color:
                                                                fTextFieldColor),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      style: ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStateProperty.all<Color>(
                                                                  fFollowButtonColor),
                                                          shape: MaterialStateProperty.all<
                                                                  RoundedRectangleBorder>(
                                                              const RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              22.0)),
                                                                  side: BorderSide(
                                                                      color:
                                                                          fFollowButtonBorderColor,
                                                                      width:
                                                                          1.0)))),
                                                    ));
                                              }),
                                        ),
                                        Center(
                                          child: GridView.builder(
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    mainAxisSpacing: 3,
                                                    crossAxisSpacing: 5),
                                            itemCount: video.length,
                                            itemBuilder: (context, index) {
                                              VideoModel videoModel =
                                                  video[index];
                                              return GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                VideoScreen(
                                                                    videoUrl:
                                                                        videoModel
                                                                            .videoUrl)));
                                                  },
                                                  child: Image.network(
                                                      videoModel.thumb_url));
                                            },
                                          ),
                                        ),
                                        const Center(
                                          child: Text('Display Tab 3',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ]))
                            ])),
                  ],
                )),
          ),
        ));
  }
}
