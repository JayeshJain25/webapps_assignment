import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapps_assignment/controller/music_controller.dart';
import 'package:webapps_assignment/widget/music_top_card.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widget/bottom_navigation_bar.dart';
import '../widget/common_widget.dart';
import 'package:get/get.dart';

import '../widget/container_box.dart';
import '../widget/music_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                bg1,
                bg2,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 50,
                          decoration: BoxDecoration(
                            color: bottomNavigationBox.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Icon(
                              Iconsax.menu_1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        SizedBox(
                          width: 260,
                          height: 55,
                          child: textFieldV(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: text(
                      text: "Trending right now",
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return MusicTopCard();
                        }),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return containerBox();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: GetX<MusicController>(
                      init: Get.put<MusicController>(
                        MusicController(),
                      ),
                      builder: (MusicController musicController) {
                        return ListView.builder(
                            itemCount: musicController.musics.length,
                            itemBuilder: (ctx, index) {
                              final musciModel = musicController.musics[index];
                              return Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                child: musicCard(musciModel),
                              );
                            });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: botomNav(),
            ),
          )
        ],
      ),
    );
  }
}
