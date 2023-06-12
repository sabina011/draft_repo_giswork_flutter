import 'package:myapp/data/user_post/datastore/model/user_post_item.dart';

abstract class GetUserPostRepository {
  Future<List<UserPostItem>> getUserPost(int day);
}
