import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/splash/splash_view_model.dart';




class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        onModelReady: (model) => model.initialize(),
        viewModelBuilder: () => SplashViewModel(),
        builder: (context, model, widget) {
          return Scaffold(body: Center(child: Text("TikTok\nFlutter", style: Theme.of(context).textTheme.headline1)));
        });
  }
}