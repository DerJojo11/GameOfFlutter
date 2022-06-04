import 'package:game_of_flutter/infrastructure/clients/client.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@Injectable(as: Client)
class AppClient implements Client {
  AppClient({required this.client});

  final http.Client client;

  @override
  Future<http.Response> get(
    Uri uri, {
    Map<String, String> headers = const {},
  }) async {
    final http.Response response = await http.get(
      uri,
      headers: headers,
    );

    return response;
  }
}
