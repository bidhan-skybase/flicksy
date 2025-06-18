import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:movies_app/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home-page";

  final c = Get.find<HomeController>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                c.fetchMovies();
              },
              child: Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}
