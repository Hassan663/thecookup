import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/profile_pic_shape.dart';
import 'package:cookup/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoIconChange extends StatefulWidget {
  const PhotoIconChange({Key? key}) : super(key: key);

  @override
  _PhotoIconChangeState createState() => _PhotoIconChangeState();
}

class _PhotoIconChangeState extends State<PhotoIconChange> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarIconBrightness: Brightness.light));
    return SafeArea(
      child: Scaffold(
        backgroundColor: fTextFieldColor,
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
                                      const ProfilePicShapeScreen()));
                        },
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Colors.white))),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Choose Shape Icon",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 11,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/commentbox.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/comment.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone1.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/icone2.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone3.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone4.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/icone5.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone6.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone7.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/icone8.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone8.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone10.png")
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/icone11.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone12.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone13.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/icone14.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone15.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone16.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/icone17.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone18.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone19.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/icone20.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone21.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone22.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/icone23.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone24.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone25.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(image: "assets/images/starx.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/crossstar.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/sidestar.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/diamond2.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/triangleicon.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone26.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/peopleicon.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/icone27.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/maskimage.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/thedrip.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/crossicon.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/brokehart.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 290,
                height: 108,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FilterChipWithImageWidget(image: "assets/images/heart.png"),
                    FilterChipWithImageWidget(
                        image: "assets/images/starreg.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 280,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FilterChipWithImageWidget(
                        image: "assets/images/diamond.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/arrow1.png"),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 87,
                    height: 21,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ProfilePicShapeScreen()));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Done",
                          style: GoogleFonts.nunito(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ))),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Image.asset("assets/images/arrow2.png"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
