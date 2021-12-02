import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/views/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/bottom_nav_bar.dart';

// class CustomText extends StatelessWidget {
//   final String text;
//   final double? fontSize;
//   final FontWeight? fontWeight;
//   final Color colors;
//   final TextStyle textStyle;
//   final GoogleFonts googleFonts;
//
//   const CustomText(
//       {Key? key, required this.text, required this.textStyle, this.fontWeight, required this.colors, required this.fontSize, this.googleFonts})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       textAlign: TextAlign.center,
//       style: GoogleFonts,
//     );
//   }
// }

//EditText
InputDecoration loginPageInputDecoration() {
  return const InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 11),
    border: InputBorder.none,
    fillColor: fTextFieldColor,
    filled: true,
  );
}

//bgImage
BoxDecoration backgroundImage(String image) {
  return BoxDecoration(
      image: DecorationImage(
    image: AssetImage(image),
    fit: BoxFit.fill,
  ));
}

Text robotoFont36Text(String text) {
  return Text(
    text,
    style: GoogleFonts.roboto(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        fontSize: 36,
        color: Colors.white),
    textAlign: TextAlign.center,
  );
}

// textStyle
Text robotoFont24Text(String text) {
  return Text(
    text,
    style: GoogleFonts.roboto(
        fontSize: 24,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        color: Colors.white),
    textAlign: TextAlign.center,
  );
}

// textStyle
Text robotoFont18Text(String text) {
  return Text(
    text,
    style: GoogleFonts.roboto(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: Colors.white),
    textAlign: TextAlign.center,
  );
}

Text robotoFont14Text(String text) {
  return Text(
    text,
    style: GoogleFonts.roboto(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: Colors.black),
    textAlign: TextAlign.center,
  );
}

// textStyle
Text robotoFont11Text(String text) {
  return Text(
    text,
    style: GoogleFonts.roboto(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        fontSize: 11,
        color: Colors.white),
    textAlign: TextAlign.center,
  );
}

Text registerText(String text) {
  return Text(
    text,
    style: GoogleFonts.roboto(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: fTextColor),
  );
}

ElevatedButton rectangleShapeButton(String text) {
  return ElevatedButton(
    onPressed: () {
      HomeScreen();
      // showModalBottomSheet(
      //     isScrollControlled: true,
      //     backgroundColor: Colors.transparent,
      //     context: context,
      //     builder: (context) {
      //       return const OpenRoom();
      //     });
    },
    child: robotoFont18Text(text),
    // child: Text(
    //   text,
    //   style: GoogleFonts.roboto(
    //       fontStyle: FontStyle.normal,
    //       fontWeight: FontWeight.w700,
    //       fontSize: 18,
    //       color: Colors.white),
    //   textAlign: TextAlign.center,
    // ),
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(fButtonLoginColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Colors.black)))),
  );
}

InputDecoration signupPageInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: GoogleFonts.roboto(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 24,
          color: Colors.white),
      border: InputBorder.none,
      fillColor: fNumberTextFieldColor,
      filled: true,
      prefixIcon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          "assets/images/world.png",
          fit: BoxFit.fill,
        ),
      ));
}

InputDecoration enterCodeInputDecoration() {
  return const InputDecoration(
    border: InputBorder.none,
    fillColor: fCodeSentColor,
    filled: true,
  );
}

class FilterChipWidget extends StatefulWidget {
  final String chipName;

  const FilterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _FilterChipWidgetState createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        child: Container(
          width: 100,
          height: 34,
          decoration: BoxDecoration(
            color: _isSelected ? Colors.blueAccent : fTextFieldColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              widget.chipName,
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoSlab(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Colors.black),
            ),
          ),
        ));
  }
}

class FilterChipWithImageWidget extends StatefulWidget {
  final String image;

  // final double width;
  // final double height;

  const FilterChipWithImageWidget({Key? key, required this.image})
      : super(key: key);

  @override
  _FilterChipWithImageWidgetState createState() =>
      _FilterChipWithImageWidgetState();
}

class _FilterChipWithImageWidgetState extends State<FilterChipWithImageWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
          decoration: BoxDecoration(
            color: _isSelected ? Colors.blueAccent : fTextFieldColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(widget.image)),
    );
  }
}


// class ColoredSafeArea extends StatelessWidget {
//   final Widget child;
//   final Color color;
//   const ColoredSafeArea({Key? key, required this.child,required this.color}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Container(
//       color: color ?? Theme.of(context).colorScheme.primaryVariant,
//       child: SafeArea(
//         child: child,
//       ),
//     );
//   }
// }

// class SizeConfig{
//
//   double heightSize(BuildContext context, double value){
//     value /= 100;
//     return MediaQuery.of(context).size.height * value;
//   }
//
//   double widthSize(BuildContext context,double value ){
//     value /=100;
//     return MediaQuery.of(context).size.width * value;
//   }
// }

// Widget buildList() => ListView.builder(
//     itemCount: follower.length,
//     itemBuilder: (context, index) {
//       final itemm = follower[index];
//       return ListTile(
//         title: Text(itemm),
//         leading: CircleAvatar(
//           radius: 75,
//           backgroundImage: NetworkImage(
//             'https://source.unsplash.com/random?sig=$index'
//           ),
//         ),
//         // title: Text(item),
//       );
//     });
