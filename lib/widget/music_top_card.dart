import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import 'common_widget.dart';

Widget MusicTopCard() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 12),
    height: 150,
    width: 245,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        30,
      ),
      image: const DecorationImage(image: NetworkImage(testImage)),
    ),
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 25,
            left: 180,
          ),
          child: const Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 42,
          ),
          width: 235,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            gradient: const LinearGradient(
              colors: [card1, card2],
            ),
          ),
          child: ListTile(
            title: text(
              textAlign: TextAlign.start,
              text: "The Dark Side",
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            subtitle: Row(
              children: [
                const Icon(
                  Iconsax.music4,
                  color: Colors.white,
                  size: 12,
                ),
                const SizedBox(
                  width: 5,
                ),
                text(
                  text: "Muse - Simulation Theory",
                  color: Colors.white30,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            trailing: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Iconsax.play5,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
