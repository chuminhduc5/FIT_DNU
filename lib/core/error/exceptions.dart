//class ServerException implements Exception {}

class ServerException implements Exception {
  final String message;

  ServerException([this.message = '']);

  @override
  String toString() =>
      message.isEmpty ? 'ServerException' : 'ServerException: $message';
}
