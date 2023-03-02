import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapps_assignment/controller/music_controller.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widget/common_widget.dart';
import 'package:get/get.dart';

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
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            height: 150,
                            width: 245,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                              image: const DecorationImage(
                                  image: NetworkImage(testImage)),
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
                              print(musicController.musics[index].title);
                              final musciModel = musicController.musics[index];
                              return Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                child: ListTile(
                                  dense: false,
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      musciModel.url ?? testImage,
                                      width: 85,
                                    ),
                                  ),
                                  title: text(
                                    textAlign: TextAlign.start,
                                    text: musciModel.title ?? "text",
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
                                        text: musciModel.artist ??
                                            "David Guetta & Bebe Rexha",
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
                                ),
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
              child: Container(
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
