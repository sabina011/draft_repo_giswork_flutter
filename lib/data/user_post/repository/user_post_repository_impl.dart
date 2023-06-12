import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:myapp/domain/user_post/datastore/user_post_datastore.dart';
import 'package:myapp/domain/user_post/repository/user_post_repository.dart';

import '../datastore/model/user_post_item.dart';

@LazySingleton(as: GetUserPostRepository)
class GetUserPostRepositoryImpl extends GetUserPostRepository {
  final GetUserPostDataStore getUserPostDataStore;

  GetUserPostRepositoryImpl(this.getUserPostDataStore);

  @override
  Future<List<UserPostItem>> getUserPost(int day) async {
    try {
      final result = await getUserPostDataStore.getUserPost(day);
      return result;
    } catch (ex) {
      log("Error fetching user post");
      throw UnimplementedError();
    }
  }
}
