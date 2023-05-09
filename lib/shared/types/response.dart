class Response {
  int code;
  bool status;
  String message;

  Response({
    required this.code,
    required this.status,
    required this.message,
  });
}

class ResponseData<T> extends Response {
  T data;

  ResponseData({
    required super.code,
    required super.status,
    required super.message,
    required this.data,
  });
}
