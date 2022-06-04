import 'package:http/http.dart' as http;

abstract class Client {
  Future<http.Response> get(
    Uri uri, {
    Map<String, String> headers = const {},
  });
}
