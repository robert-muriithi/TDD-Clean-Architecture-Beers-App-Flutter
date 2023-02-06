class ServerException implements Exception {
  String message;
  ServerException(this.message);
}

class DatabaseException implements Exception{
  String message;
  DatabaseException(this.message);
}