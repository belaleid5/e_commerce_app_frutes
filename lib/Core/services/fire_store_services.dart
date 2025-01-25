import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app_frutes/Core/services/data_services.dart';

class FireStoreServices implements DataServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
    firestore.collection(path).add(data);
  }
}
