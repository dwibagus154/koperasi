enum ApiResponseStatus { SUCCESS, ERRROR }

extension ParseToString on ApiResponseStatus {
  String toShortString() {
    return toString().split('.').last;
  }
}
