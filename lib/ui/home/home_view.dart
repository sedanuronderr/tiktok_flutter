import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/app/app.router.dart';
import 'package:tiktok_flutter/app/app_base_viewmodel.dart';
import 'package:tiktok_flutter/di/locator.dart';
import 'package:tiktok_flutter/services/firebase_service.dart';
import 'package:tiktok_flutter/ui/detail/detail_view.dart';

import '../../widgets/video_widgets.dart';
import 'HomeViewModel.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewMode>.reactive(
        viewModelBuilder: ()
    =>
        HomeViewMode()
    ,
    onModelReady: (model) async => await model.init(),
    builder: (context, model, child) => Scaffold(
    appBar: AppBar(
    title: Text(
    "TikTok Flutter",
    style: Theme.of(context).textTheme.bodyLarge,
    ),
    actions: [
    IconButton(onPressed:(){
    locator<AppBaseViewMode>().changeTheme();
    }, icon:
    locator<AppBaseViewMode>().theme == ThemeMode.light ? Icon(Icons.dark_mode): Icon(Icons.light_mode)
    ),
    ],
    ),
    body: SingleChildScrollView(
    child: model.videos == null
    ? SizedBox(
    height: MediaQuery.of(context).size.height,
    child: const Center(child: CircularProgressIndicator()))
        : ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: model.videos!.length,
    itemBuilder: (context, index) {
    return VideoWidget(video: model.videos![index]);
    },
    )
    ,
    ),

    ));
  }
}