import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/settings.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PickTopic extends StatefulWidget {
  const PickTopic({Key? key}) : super(key: key);

  @override
  _PickTopicState createState() => _PickTopicState();
}

class _PickTopicState extends State<PickTopic> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      backgroundColor: fInterestBgColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SettingScreen()));
                        },
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Pick A Topic",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: Colors.white),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                "Search Topic",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoSlab(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white),
              ),
              Container(
                margin: const EdgeInsets.only(left: 14, right: 14, top: 7),
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
                          hintText: 'Find a Topic that fits you Group',
                          hintStyle: GoogleFonts.robotoSlab(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ),
                    Positioned(
                        left: 15,
                        top: 10,
                        child: Image.asset("assets/images/searchicon.png")),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Money",
                      style: GoogleFonts.robotoSlab(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset("assets/images/moneybag.png"))
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Stocks'),
                      FilterChipWidget(chipName: 'Crypto'),
                      FilterChipWidget(chipName: 'Market'),
                      FilterChipWidget(chipName: 'Jobs'),
                      FilterChipWidget(chipName: 'Investment'),
                      FilterChipWidget(chipName: 'Entrepreneur'),
                      FilterChipWidget(chipName: 'Business'),
                      FilterChipWidget(chipName: "Venture\nCapital"),
                      FilterChipWidget(chipName: 'Advertise'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Support",
                    style: GoogleFonts.robotoSlab(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Advice'),
                      FilterChipWidget(chipName: 'Relationship'),
                      FilterChipWidget(chipName: 'Dating'),
                      FilterChipWidget(chipName: 'Stress'),
                      FilterChipWidget(chipName: 'Pregnant'),
                      FilterChipWidget(chipName: 'Parenting'),
                      FilterChipWidget(chipName: 'Divorce'),
                      FilterChipWidget(chipName: "Wedding"),
                      FilterChipWidget(chipName: 'Death'),
                      FilterChipWidget(chipName: "Newborn"),
                      FilterChipWidget(chipName: 'Break up '),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Open",
                    style: GoogleFonts.robotoSlab(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Open\nThoughts'),
                      FilterChipWidget(chipName: 'Free\nThinking'),
                      FilterChipWidget(chipName: 'Any thing\nGoes'),
                      FilterChipWidget(chipName: 'Touchy\nSubjects'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Chill",
                      style: GoogleFonts.robotoSlab(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset("assets/images/snowflake.png"))
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Relax'),
                      FilterChipWidget(chipName: 'Break Night'),
                      FilterChipWidget(chipName: 'Meet Ppl'),
                      FilterChipWidget(chipName: 'Mix & Mingle'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Social",
                      style: GoogleFonts.robotoSlab(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset("assets/images/people.png"))
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'TikTok'),
                      FilterChipWidget(chipName: 'Instagram'),
                      FilterChipWidget(chipName: 'Network'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sports",
                    style: GoogleFonts.robotoSlab(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Football'),
                      FilterChipWidget(chipName: 'Basketball'),
                      FilterChipWidget(chipName: 'Baseball'),
                      FilterChipWidget(chipName: 'Hockey'),
                      FilterChipWidget(chipName: 'Olympic'),
                      FilterChipWidget(chipName: 'Golf'),
                      FilterChipWidget(chipName: 'MMA'),
                      FilterChipWidget(chipName: 'Boxing'),
                      FilterChipWidget(chipName: 'Cricket'),
                      FilterChipWidget(chipName: 'Soccer'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Entertainment",
                    style: GoogleFonts.robotoSlab(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Movies'),
                      FilterChipWidget(chipName: 'Music'),
                      FilterChipWidget(chipName: 'T.V. Shows'),
                      FilterChipWidget(chipName: 'Podcast'),
                      FilterChipWidget(chipName: 'Comedy'),
                      FilterChipWidget(chipName: 'Netflix'),
                      FilterChipWidget(chipName: 'Gaming'),
                      FilterChipWidget(chipName: 'Anime'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Knowledge",
                      style: GoogleFonts.robotoSlab(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset("assets/images/knowledge.png"))
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'History'),
                      FilterChipWidget(chipName: 'Space'),
                      FilterChipWidget(chipName: 'Science'),
                      FilterChipWidget(chipName: 'Cooking'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Tech",
                      style: GoogleFonts.robotoSlab(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset("assets/images/motherboard.png"))
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'A.i.'),
                      FilterChipWidget(chipName: 'Product'),
                      FilterChipWidget(chipName: 'Software'),
                      FilterChipWidget(chipName: 'Engineering'),
                      FilterChipWidget(chipName: 'Start Up'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Faith",
                      style: GoogleFonts.robotoSlab(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset("assets/images/foldedhandsemoji.png"))
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Judaism'),
                      FilterChipWidget(chipName: 'Islam'),
                      FilterChipWidget(chipName: 'Christianity'),
                      FilterChipWidget(chipName: 'Hinduism'),
                      FilterChipWidget(chipName: 'Atheist'),
                      FilterChipWidget(chipName: 'Spiritual'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Arts",
                    style: GoogleFonts.robotoSlab(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Painting'),
                      FilterChipWidget(chipName: 'Graphic\nDesign'),
                      FilterChipWidget(chipName: 'Art'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Health",
                    style: GoogleFonts.robotoSlab(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Medicine'),
                      FilterChipWidget(chipName: 'Fitness'),
                      FilterChipWidget(chipName: 'Nutrition'),
                      FilterChipWidget(chipName: 'Exercise'),
                      FilterChipWidget(chipName: 'Covid-19'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Social Identity",
                    style: GoogleFonts.robotoSlab(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Straight'),
                      FilterChipWidget(chipName: 'Bi'),
                      FilterChipWidget(chipName: 'Disabled'),
                      FilterChipWidget(chipName: 'LGBTQ'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Global Events",
                    style: GoogleFonts.robotoSlab(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Politics'),
                      FilterChipWidget(chipName: 'Economics'),
                      FilterChipWidget(chipName: 'Current\nEvents'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nature",
                    style: GoogleFonts.robotoSlab(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: const [
                      FilterChipWidget(chipName: 'Farming'),
                      FilterChipWidget(chipName: 'Animals'),
                      FilterChipWidget(chipName: 'Climate'),
                      FilterChipWidget(chipName: 'OutDoor'),
                      FilterChipWidget(chipName: 'Homestead'),
                      FilterChipWidget(chipName: 'Natural\nDisaster ')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
