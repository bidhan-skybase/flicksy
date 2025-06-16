import 'package:get/get.dart';
import 'package:movies_app/controller/home_controller.dart';
import 'package:movies_app/controller/splash_controller.dart';
import 'package:movies_app/views/home_page.dart';
import 'package:movies_app/views/splash_page.dart';

final List<GetPage> getPages = <GetPage>[
  GetPage(
    name: SplashPage.routeName,
    page: () => SplashPage(),
    binding: BindingsBuilder(() {
      Get.lazyPut(() => SplashController());
    }),
  ),
  GetPage(
    name: HomePage.routeName,
    page: () => HomePage(),
    binding: BindingsBuilder(() {
      Get.lazyPut(() => HomeController());
    }),
  ),
];
