import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tiktok_flutter/di/locator.dart';

import '../constants/theme.dart';
import '../firebase_options.dart';
import '../ui/home/home_view.dart';
import 'app.router.dart';
import 'app_base_viewmodel.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppBaseViewMode>.reactive(
        viewModelBuilder: () => locator<AppBaseViewMode>(),
        onModelReady: (model) => model.init(),
    builder: (context, model, child) =>  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: locator<AppBaseViewMode>().theme,
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorObservers: const <NavigatorObserver>[],

      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),

    )

    );
  }
}




