import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../constants/api_constants.dart';
import '../models/response/firebase_videos.dart';

class FirebaseService {
  final CollectionReference _videosCollectionReference =
  FirebaseFirestore.instance.collection(ApiConstants.FIRESTORE_VIDEOS_PATH);
  init() {
    signInAnonymously();
  }

  signInAnonymously() async {

    await FirebaseAuth.instance.signInAnonymously();
  }


  Future<List<FirebaseVideos>> getVideos() async {
    List<FirebaseVideos> firebaseVideos = [];
    await _videosCollectionReference.orderBy("order").get().then((value) {
      value.docs.forEach((element) {
        var item = FirebaseVideos.fromJson(element.data() as Map<String, dynamic>);
        firebaseVideos.add(item);
      });
    });
    return firebaseVideos;
  }
}