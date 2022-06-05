class ApiEndpoints {
  const ApiEndpoints._();

  static const String _prefix = '/api';

  static const String getAllHouses = '$_prefix/houses';
  static String getHouseForId(int id) => '$getAllHouses/$id';

  static const String getAllCharacters = '$_prefix/characters';
  static String getCharacterForId(int id) => '$getAllCharacters/$id';
}
