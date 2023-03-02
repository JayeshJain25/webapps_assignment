import 'package:get/get.dart';
import 'package:webapps_assignment/data/firestore_db.dart';
import 'package:webapps_assignment/model/music_model.dart';

class MusicController extends GetxController {
  Rx<List<MusicModel>> musicList = Rx<List<MusicModel>>([]);
  List<MusicModel> get musics => musicList.value;

  @override
  void onReady() {
    musicList.bindStream(FirestoreDb.getData());
  }
}
