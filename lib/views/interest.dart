import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/setup.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chips.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({Key? key}) : super(key: key);

  @override
  _InterestScreenState createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      backgroundColor: fInterestBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SetupScreen()));
                      },
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Interest",
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
              "Search Interests",
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
                        hintText: 'Find Interest that fits you',
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
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset("assets/images/moneybag.png"),
                )
              ],
            ),

            Align(
              alignment: Alignment.center,
              child: Container(
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: [
                    FilterChipWidget(chipName: 'Stocks',),
                    FilterChipWidget(chipName: 'Crypto',),
                    FilterChipWidget(chipName: 'Market',),
                    FilterChipWidget(chipName: 'Jobs',),
                    FilterChipWidget(chipName: 'Investment',),
                    FilterChipWidget(chipName: 'Entrepreneur',),
                    FilterChipWidget(chipName: 'Business',),
                    FilterChipWidget(chipName: 'Venture\nCapital',),
                    FilterChipWidget(chipName: 'Advertise',),
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
