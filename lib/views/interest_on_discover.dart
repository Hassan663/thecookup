import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/follower_list_model.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'discover_search.dart';

class DiscoversInterest extends StatefulWidget {
  const DiscoversInterest({Key? key}) : super(key: key);

  @override
  _DiscoversInterestState createState() => _DiscoversInterestState();
}

class _DiscoversInterestState extends State<DiscoversInterest> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/discvrbg.png"),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Discover()));
                              },
                              icon: const Icon(Icons.arrow_back_ios,
                                  color: Colors.white))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Knowledge",
                            style: GoogleFonts.robotoSlab(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                color: Colors.white)),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset("assets/images/knowledge.png"),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Text(
                        "People To Follow",
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
                        "Category in Knowledge",
                        style: GoogleFonts.robotoSlab(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
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
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Groups to Join",
                      style: GoogleFonts.robotoSlab(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.white),
                      textAlign: TextAlign.center,
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
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ))));
  }
}
