import 'package:flutter/material.dart';
import 'package:movies_app/utils/helpers/storage_helpers.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            print(StorageHelpers.getMovies().length);
          }, child: const Text("Favourites"))
        ],
      ),
    );
  }
}
