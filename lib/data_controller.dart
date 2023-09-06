import 'data_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  String userUrl = 'https://jsonplaceholder.typicode.com/users';
  Dio dio = Dio();
  Future<List<DataModel>> getUsers() async {
    var response = await dio.get(userUrl);
    if (response.statusCode == 200) {
      print(response.data);
      final List result = response.data;
      return result.map((e) => DataModel.fromJson(e)).toList();
    } else {
      throw 'error';
    }
  }
}
