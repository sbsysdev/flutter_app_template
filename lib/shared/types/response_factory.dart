abstract class ResponseFactory<T> {
  T fromJson(Map<String, dynamic>? json);
}
