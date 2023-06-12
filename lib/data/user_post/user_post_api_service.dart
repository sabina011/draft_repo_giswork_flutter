import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/network/dio_client.dart';
import 'package:myapp/data/user_post/datastore/model/user_post_item.dart';

@injectable
class UserPostApiService {
  final DioClient dioClient;

  UserPostApiService(this.dioClient);

  Future<List<UserPostItem>> getUserPost(int day) async {
    List<UserPostItem> newPostItems = [];
    var url = '${base_url}posts?day=$day';
    Map<String, String> headers = {
      "Content-Type": "application/json",
    };
    final result =
        await dioClient.dio.get(url, options: Options(headers: headers));
    for (var x in result.data) {
      final value = UserPostItem.fromJson(x);
      newPostItems.add(value);
    }
    return newPostItems;
  }
}
