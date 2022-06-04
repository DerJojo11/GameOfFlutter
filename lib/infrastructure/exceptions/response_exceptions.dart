import 'package:http/http.dart';

class ResponseException implements Exception {
  ResponseException(this.response);

  final Response response;

  @override
  String toString() {
    final Response response = this.response;
    return 'Exception (${response.statusCode}): ${response.body}';
  }
}
