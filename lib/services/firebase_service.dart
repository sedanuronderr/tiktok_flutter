import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../constants/api_constants.dart';

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

  }
}