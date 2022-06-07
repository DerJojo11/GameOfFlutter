import 'dart:io';

String resource(String name) {
  String dir = Directory.current.path.replaceAll('\\', '/');
  if (dir.endsWith('/test')) {
    dir = dir.replaceAll('/test', '');
  }
  return File('$dir/test/test_helper/jsons/$name').readAsStringSync();
}
