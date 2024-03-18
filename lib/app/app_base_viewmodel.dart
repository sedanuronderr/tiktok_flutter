import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../di/locator.dart';
import '../services/firebase_service.dart';

class AppBaseViewMode extends BaseViewModel {
  ThemeMode theme = ThemeMode.dark;

  final NavigationService navigationService = locator<NavigationService>();
  final FirebaseService firebaseService = locator<FirebaseService>();

  init(){
firebaseService.init();
  }

  changeTheme(){

      if(theme == ThemeMode.dark){
        theme = ThemeMode.light;
      }else{
        theme = ThemeMode.dark;
      }

      locator<AppBaseViewMode>().notifyListeners();

  }
}
