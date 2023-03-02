import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'common_widget.dart';

Widget containerBox() {
  return Container(
    width: 130,
    height: 30,
    margin: const EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(
        colors: [card1, card2],
      ),
    ),
    child: Center(
      child: text(
        text: "Trending right now",
        color: Colors.grey,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
