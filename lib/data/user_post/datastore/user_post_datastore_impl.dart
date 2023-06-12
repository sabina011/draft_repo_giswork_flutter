import 'package:injectable/injectable.dart';
import 'package:myapp/data/user_post/datastore/model/user_post_item.dart';
import 'package:myapp/data/user_post/user_post_api_service.dart';
import 'package:myapp/domain/user_post/datastore/user_post_datastore.dart';

@LazySingleton(as: GetUserPostDataStore)
class UserPostDataStoreImpl extends GetUserPostDataStore {
  final UserPostApiService apiService;

  UserPostDataStoreImpl(this.apiService);

  @override
  Future<List<UserPostItem>> getUserPost(int day) {
    return apiService.getUserPost(day);
  }
}
