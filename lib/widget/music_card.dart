import 'package:flutter/material.dart';
import 'package:webapps_assignment/model/music_model.dart';

import 'package:iconsax/iconsax.dart';
import '../utils/constants.dart';
import 'common_widget.dart';

Widget musicCard(MusicModel musicModel) {
  return ListTile(
    dense: false,
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        musicModel.url ?? testImage,
        width: 85,
      ),
    ),
    title: text(
      textAlign: TextAlign.start,
      text: musicModel.title ?? "text",
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    subtitle: Row(
      children: [
        const Icon(
          Iconsax.user,
          color: Colors.grey,
          size: 13,
        ),
        const SizedBox(
          width: 8,
        ),
        text(
          textAlign: TextAlign.start,
          text: musicModel.artist ?? "David Guetta & Bebe Rexha",
          color: Colors.grey,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ],
    ),
    trailing: const Icon(
      Iconsax.heart,
      color: Colors.white,
    ),
  );
}
