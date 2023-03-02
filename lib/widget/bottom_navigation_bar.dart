import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../utils/colors.dart';

Widget botomNav() {
  return Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.only(
      bottom: 25,
    ),
    width: 350,
    height: 75,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: bottomNavigationBox.withOpacity(0.95),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(
          Iconsax.home,
          color: Colors.white,
          size: 27,
        ),
        Icon(
          Iconsax.search_normal,
          color: Colors.white,
          size: 27,
        ),
        Icon(
          Iconsax.music,
          color: Colors.white,
          size: 27,
        ),
        Icon(
          Iconsax.user,
          color: Colors.white,
          size: 27,
        )
      ],
    ),
  );
}
