import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/app/app_base_viewmodel.dart';

import '../../di/locator.dart';
import '../../models/response/firebase_videos.dart';

class HomeViewMode extends AppBaseViewMode {
  List<FirebaseVideos>? videos;
  init() {
    firebaseService.getVideos().then((value) {
      videos = value;
      notifyListeners();
    });
  }

}
