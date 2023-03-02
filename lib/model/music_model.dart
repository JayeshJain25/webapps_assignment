import 'package:cloud_firestore/cloud_firestore.dart';

class MusicModel {
  String? title;
  String? artist;
  String? url;

  MusicModel({
    this.title,
    this.artist,
    this.url,
  });

  MusicModel.fromDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    title = documentSnapshot["title"];
    artist = documentSnapshot["artist"];
    url = documentSnapshot["url"];
  }
}
