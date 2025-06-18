import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:movies_app/utils/constants/api.dart';

class HomeController extends GetxController {
  Future<void> fetchMovies() async {
    var url = Uri.parse(API.fetchMovies);
    var response = await http.get(
      url,
      headers: {"Authorization": "Bearer ${API.accessToken}"},
    );
    print(response.body);
  }
}
