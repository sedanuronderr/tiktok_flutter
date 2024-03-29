
import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tiktok_flutter/app/app_base_viewmodel.dart';

import '../services/firebase_service.dart';

final locator = GetIt.instance;


 Future<void>  setupLocator() async{
   locator.registerLazySingleton(() => AppBaseViewMode());
   locator.registerLazySingleton(() => NavigationService());
   locator.registerLazySingleton(() => FirebaseService());

 }
