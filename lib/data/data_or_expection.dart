class DataOrException<T> {
  final T? data;
  final bool isSuccess;

  DataOrException({this.data, required this.isSuccess});
}
