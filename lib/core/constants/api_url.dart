import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiUrl {
  static final String baseUrl = dotenv.env['API_URL'] ?? '';

  // Todo: Config API Auth
  static final String signIn = '';
}
