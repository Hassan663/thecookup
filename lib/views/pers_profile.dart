import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/video_list_model.dart';
import 'package:cookup/views/following_list.dart';
import 'package:cookup/views/video_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'follower_list.dart';

class PersonProfileScreen extends StatefulWidget {
  const PersonProfileScreen({Key? key}) : super(key: key);

  @override
  _PersonProfileScreenState createState() => _PersonProfileScreenState();
}

class _PersonProfileScreenState extends State<PersonProfileScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/ppsbg.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FollowersList()));
                            },
                            icon: const Icon(Icons.arrow_back_ios,
                                color: Colors.white),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz_rounded,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90.0,
                        width: 90.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/charlespf.png"),
                                  fit: BoxFit.fill),
                              color: fTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 90.0,
                        width: 90.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/charlespf.png"),
                                  fit: BoxFit.fill),
                              color: fTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 90.0,
                        width: 90.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/charlespf.png"),
                                  fit: BoxFit.fill),
                              color: fTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/message.png"),
                      SizedBox(
                        width: 80,
                        height: 29,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Follow",
                            style: GoogleFonts.rosarivo(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: fFollowTextColor),
                            textAlign: TextAlign.center,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  fFollowButtonColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(22.0)),
                                      side: BorderSide(
                                          color: fFollowButtonBorderColor,
                                          width: 1.0)))),
                        ),
                      ),
                      Image.asset("assets/images/bell.png"),
                      Image.asset("assets/images/batch.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Naz T",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("@Tnazi",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FollowersList()));
                          },
                          child: SizedBox(
                            width: 106,
                            height: 18,
                            child: Text("22 Followers",
                                style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                      Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FollowingList()));
                          },
                          child: SizedBox(
                            width: 106,
                            height: 19,
                            child: Text("10 Following",
                                style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Add About me",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 23.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/twitter.png"),
                            Text("@Tnazi",
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
                            Text("@Tnazi",
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/snapchat.png"),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("@Naze1",
                                  style: GoogleFonts.rosarivo(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white),
                                  textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/tiktok.png"),
                            Text("@NaziNaz",
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/acclogo.png"),
                      Text("@Tcooknaz",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Constituent of",
                          style: GoogleFonts.rosarivo(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        height: 40.0,
                        width: 40.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/charlespf.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        height: 40.0,
                        width: 40.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/charlespf.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5.0),
                        height: 40.0,
                        width: 40.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/charlespf.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  DefaultTabController(
                      length: 2, // length of tabs
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              height: 40,
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              child: TabBar(
                                indicatorPadding:
                                    const EdgeInsets.only(left: 70, right: 70),
                                indicatorColor: Colors.black,
                                tabs: [
                                  Tab(
                                    icon:
                                        Image.asset("assets/images/video.png"),
                                  ),
                                  Tab(
                                    icon: Image.asset(
                                        "assets/images/podcasticon.png"),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height: 400,
                                child: TabBarView(children: <Widget>[
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height,
                                      child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                                mainAxisSpacing: 3,
                                                crossAxisSpacing: 5),
                                        itemCount: video.length,
                                        itemBuilder: (context, index) {
                                          VideoModel videoModel = video[index];
                                          return GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            VideoScreen(
                                                                videoUrl: videoModel
                                                                    .videoUrl)));
                                              },
                                              child: Image.network(
                                                  videoModel.thumb_url));
                                        },
                                      )),
                                  const Center(
                                    child: Text('Display Tab 2',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ]))
                          ])),
                ],
              ),
            ),
          ),
        ));
  }
}
