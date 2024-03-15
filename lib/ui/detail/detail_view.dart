import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/ui/detail/detail_view_model.dart';

import '../../app/app_base_viewmodel.dart';
import '../../di/locator.dart';

class DetailView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailViewMode>.reactive(
        viewModelBuilder: () => DetailViewMode(),
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
body: Container(child:
Center(child: Text("Detail app"))),
        )
    );
  }
}