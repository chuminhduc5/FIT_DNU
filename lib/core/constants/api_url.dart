import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiUrl {
  //static const String baseUrl = 'http://0.0.0.0:5291/';

  static const String baseUrl = 'http://localhost:5291/';

  //static const String baseUrl = 'http://172.16.50.206:5291/';

  static const String apiV = 'api/v1/';

  // Todo: Config API Auth
  static const String signIn = '${apiV}account/login';

  // Todo: Config API Profile
  static const String profile = '${apiV}Student/get-student-by-id/5';
  static const String course = '${apiV}Course/get-all';
  static const String grade = '${apiV}Grade/get-grades-by-studentCode/5';
}
