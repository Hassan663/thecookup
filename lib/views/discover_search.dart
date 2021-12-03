import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/follower_list_model.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/setupbg.png"),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          "DISCOVER",
                          style: GoogleFonts.robotoSlab(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 14, right: 14, top: 7),
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: fSearchFieldColor),
                      child: Stack(
                        children: [
                          TextField(
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            style: GoogleFonts.robotoSlab(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                    left: 50, right: 50, bottom: 8),
                                border: InputBorder.none,
                                hintText: 'Find People & Groups',
                                hintStyle: GoogleFonts.robotoSlab(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                          Positioned(
                              left: 15,
                              top: 10,
                              child:
                                  Image.asset("assets/images/searchicon.png")),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, top: 10),
                      child: Text(
                        "People To Follow",
                        style: GoogleFonts.rosarivo(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 18, right: 18, top: 6),
                      height: MediaQuery.of(context).size.height * 0.4,
                      // color: Colors.yellow,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: follower.length,
                          itemBuilder: (context, index) {
                            FollowersModel followersModel = follower[index];
                            return ListTile(
                              leading: Container(
                                width: 60.0,
                                height: 120.0,
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(followersModel.image),
                                        fit: BoxFit.fill),
                                    color: fTextFieldColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30.0)),
                                  ),
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Text(
                                  followersModel.name,
                                  style: GoogleFonts.rosarivo(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              ),
                              subtitle: Text(followersModel.desc,
                                  style: GoogleFonts.roboto(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: Colors.white)),
                              trailing: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    // pressAttention = !pressAttention;
                                  });
                                },
                                child: Text(
                                  followersModel.followButton,
                                  style: GoogleFonts.rosarivo(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: fTextFieldColor),
                                  textAlign: TextAlign.center,
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
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
                              onTap: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) {
                                //       return const GroupedProfile();
                                //     }));
                              },
                            );
                          }),
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: Divider(
                          color: Colors.black,
                          thickness: 1.0,
                        )),
                        ClipOval(
                            child: Container(
                          width: 81.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: fTextFieldColor,
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: const BorderRadius.all(
                                Radius.elliptical(81, 45)),
                          ),
                          child: Center(
                            child: Text(
                              ".More.",
                              style: GoogleFonts.rosarivo(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                        const Expanded(
                            child: Divider(
                          color: Colors.black,
                          thickness: 1.0,
                        )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Text(
                        "Looking for Great Discussion...",
                        style: GoogleFonts.rosarivo(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 18, right: 18, top: 6),
                      height: MediaQuery.of(context).size.height * 0.4,
                      // color: Colors.yellow,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: follower.length,
                          itemBuilder: (context, index) {
                            FollowersModel followersModel = follower[index];
                            return ListTile(
                              leading: Container(
                                width: 60.0,
                                height: 120.0,
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(followersModel.image),
                                        fit: BoxFit.fill),
                                    color: fTextFieldColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30.0)),
                                  ),
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Text(
                                  followersModel.name,
                                  style: GoogleFonts.rosarivo(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              ),
                              subtitle: Text(followersModel.desc,
                                  style: GoogleFonts.roboto(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: Colors.white)),
                              trailing: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    // pressAttention = !pressAttention;
                                  });
                                },
                                child: Text(
                                  followersModel.followButton,
                                  style: GoogleFonts.rosarivo(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: fTextFieldColor),
                                  textAlign: TextAlign.center,
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
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
                              onTap: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) {
                                //       return const GroupedProfile();
                                //     }));
                              },
                            );
                          }),
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.center,
                      child: Wrap(
                        spacing: 5.0,
                        runSpacing: 5.0,
                        children: const [
                          FilterChipWidget(chipName: 'Movies'),
                          FilterChipWidget(chipName: 'Music'),
                          FilterChipWidget(chipName: 'T.V. Shows'),
                          FilterChipWidget(chipName: 'Podcast'),
                          FilterChipWidget(chipName: 'Knowledge'),
                          FilterChipWidget(chipName: 'Netflix'),
                          FilterChipWidget(chipName: 'Gaming'),
                          FilterChipWidget(chipName: 'Anime'),
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
