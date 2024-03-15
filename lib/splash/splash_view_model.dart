import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tiktok_flutter/app/app.router.dart';

import '../../app/app_base_viewmodel.dart';

class SplashViewModel extends AppBaseViewMode {


  initialize() {
    Future<void>.delayed(Duration(seconds: 3), () => navigationService.replaceWith(Routes.homeView));
  }
}