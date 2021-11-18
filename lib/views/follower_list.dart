import 'dart:ui';

import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/follower_list_model.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowersList extends StatefulWidget {
  const FollowersList({Key? key}) : super(key: key);

  @override
  _FollowersListState createState() => _FollowersListState();
}

class _FollowersListState extends State<FollowersList> {
  bool pressAttention = false;

  // bool cmbscritta = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/codebg.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 5),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const CodeScreen()));
                            },
                            icon: Icon(Icons.arrow_back_ios,
                                color: Colors.white))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "Follwers",
                      style: GoogleFonts.robotoSlab(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
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
                                    pressAttention = !pressAttention;
                                  });
                                },
                                child: Text(
                                  followersModel.followButton,
                                  style: GoogleFonts.rosarivo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: pressAttention
                                        ? Colors.grey
                                        : Colors.blue,
                                  ),
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
                              ));
                        }),
                  ),
                ],
              )),
        ));
  }
}
