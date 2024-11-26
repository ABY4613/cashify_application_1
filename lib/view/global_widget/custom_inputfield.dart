import 'package:cashify_application_1/utilits/color_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputField extends StatelessWidget {
  String? hintTex;

  ///ghjkl;;;
  IconData? prefixIcon; //ghjkl
  IconData? suffixIcon; //fghjkl

  CustomInputField({this.hintTex, this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: ColorConstants.WHITE,
          hintText: hintTex,
          hintStyle: GoogleFonts.montserrat(
              color: ColorConstants.BLACK,
              fontWeight: FontWeight.w600,
              fontSize: 12),
          prefixIcon:
              prefixIcon != null ? Icon(prefixIcon) : null, // lkashodiasdoh
          suffixIcon: Icon(suffixIcon),
           border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),)
    );
  }
}
