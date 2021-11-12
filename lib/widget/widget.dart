import 'package:cookup/constants/color_constant.dart';
import 'package:cookup/model/follower_list_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecoration loginPageInputDecoration() {
  return const InputDecoration(
    border: InputBorder.none,
    fillColor: fTextFieldColor,
    filled: true,
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
