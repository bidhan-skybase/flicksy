import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home-page";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                var token = dotenv.env['AUTHORIZATION_TOKEN'];
                print(token.toString());
              },
              child: Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}
