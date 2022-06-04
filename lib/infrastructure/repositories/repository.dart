import 'package:game_of_flutter/configs/configs.dart';
import 'package:game_of_flutter/infrastructure/clients/client.dart';

abstract class Repository {
  Repository({
    required this.client,
    required this.configs,
  });

  final Client client;
  final Configs configs;

  /// Builds the Uri out of [configs.baseUrl] and provied [path] & [parameters]
  Uri buildUri({required String path, Map<String, dynamic>? parameters}) {
    return Uri.https(configs.baseUrl, path, parameters);
  }
}
