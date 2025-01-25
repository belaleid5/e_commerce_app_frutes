import 'package:e_commerce_app_frutes/Features/auth/domain/entites/user_entity.dart';

abstract class DataServices {
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId});

  Future<UserEntity> getData(
      {required String path, required String documentId});

  Future<bool> checkIsDataExist(
      {required String path, required String documentId});
}
