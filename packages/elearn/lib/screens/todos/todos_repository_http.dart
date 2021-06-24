import 'package:dio/dio.dart';

import './todos_types.dart';

final apiUrl = 'https://jsonplaceholder.typicode.com/todos';

class TodosRepositoryHttp extends TodosRepository {
  @override
  Future<List<Todo>> list(String userId) async {
    final response = await Dio().get(
      apiUrl,
      queryParameters: {'userId': userId},
    );
    final items =
        (response.data as List).map((item) => Todo.fromJson(item)).toList();
    return items;
  }
}
