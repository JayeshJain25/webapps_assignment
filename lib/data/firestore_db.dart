import 'package:webapps_assignment/model/music_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDb {
  static Stream<List<MusicModel>> getData() {
    return FirebaseFirestore.instance
        .collection("Musics")
        .snapshots()
        .map((event) {
      List<MusicModel> musics = [];
      for (var music in event.docs) {
        musics.add(
          MusicModel(
            artist: music["artist"],
            title: music["title"],
            url: music["url"],
          ),
        );
      }
      return musics;
    });
  }
}
