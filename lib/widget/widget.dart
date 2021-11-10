import 'package:cookup/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecoration loginPageInputDecoration() {
  return InputDecoration(
      // contentPadding: const EdgeInsets.only(
      //     left: 5, right: 5,bottom: 13),
      border: InputBorder.none,
      fillColor: fTextFieldColor,
      filled: true);
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
  return InputDecoration(
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
    return Container(
      width: 118,
      height: 32,
        decoration: BoxDecoration(
          // image: DecorationImage(image: AssetImage("assets/images/stocks.png")),
            color: fTextFieldColor,
            borderRadius:
            BorderRadius.all(Radius.circular(8.0))),
      child: FilterChip(
        avatar: Image.asset("assets/images/stocks.png"),
        showCheckmark: false,
        label: Text(widget.chipName),
        labelStyle: GoogleFonts.robotoSlab(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: Colors.black
        ),
        selected: _isSelected,
        backgroundColor: fTextFieldColor,
        onSelected: (isSelected) {
          setState(() {
            _isSelected = isSelected;
          });
        },
        selectedColor: Colors.blueAccent,
      ),
    );
  }
}
