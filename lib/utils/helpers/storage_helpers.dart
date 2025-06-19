import 'package:get_storage/get_storage.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/utils/constants/storage_keys.dart';

class StorageHelpers {
  static void saveFavouriteMovie(MovieModel movie) {
    final box = GetStorage();
    List<MovieModel> movies = box.read(StorageKeys.FAVOURITE_KEY)??[];
    if (!movies.contains(movie)) {
      movies.add(movie);
      box.write(StorageKeys.FAVOURITE_KEY, movies);
    }
  }

  static List<MovieModel> getMovies() {
    final box = GetStorage();
    List<MovieModel> movies = box.read(StorageKeys.FAVOURITE_KEY);
    return movies;
  }
}
