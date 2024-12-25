final class EndPoints {
  static const String baseUrl = 'https://';
  static String get userList => '${baseUrl}api/users?page=1';
  static String get userDetail => '${baseUrl}api/users/{id}';
  static const imageUrlDummy = '';
}
