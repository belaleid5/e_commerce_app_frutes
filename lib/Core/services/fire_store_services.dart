import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app_frutes/Core/services/data_services.dart';
import 'package:e_commerce_app_frutes/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/entites/user_entity.dart';

class FireStoreServices implements DataServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<UserEntity> getData(
      {required String path, required String documentId}) async {
    var data = await firestore.collection(path).doc(documentId).get();
    return UserModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId}) async {
    if (documentId != null) {
      firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<bool> checkIsDataExist(
      {required String path, required String documentId}) async {
    var data = await firestore.collection(documentId).doc().get();
    return data.exists;
  }
}
