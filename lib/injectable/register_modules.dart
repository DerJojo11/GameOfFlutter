import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class RegisterModules {
  @injectable
  http.Client get client => http.Client();
}
