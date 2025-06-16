import 'package:get/get.dart';
import 'package:movies_app/views/home_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(HomePage.routeName);
    });
    super.onInit();
  }
}
