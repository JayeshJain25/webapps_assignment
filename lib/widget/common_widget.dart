import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/colors.dart';

Widget textFieldV() {
  return TextFormField(
    style: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
      hintText: 'Search',
      fillColor: bottomNavigationBox.withOpacity(0.7),
      prefixIcon: const Icon(
        Iconsax.search_normal4,
      ),
      prefixIconColor: const Color(0xFF9E9E9E),
      filled: true,
      hintStyle: GoogleFonts.poppins(
        fontSize: 13,
        color: const Color(0xFF9E9E9E),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        borderSide: BorderSide(
          width: 0,
          color: Colors.white,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
    ),
  );
}

Widget text({
  required String text,
  required Color color,
  required double fontSize,
  required FontWeight fontWeight,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    style: GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
