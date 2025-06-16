import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:movies_app/utils/routes.dart';
import 'package:movies_app/views/splash_page.dart';

void main(){
  runApp(Flicksy());
}

class Flicksy extends StatelessWidget {
  const Flicksy({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: SplashPage.routeName,
      getPages: getPages,
    );
  }
}
