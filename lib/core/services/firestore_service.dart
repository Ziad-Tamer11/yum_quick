import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yum_quick/core/services/database_service.dart';

class FirestoreService implements DatabaseService {
  final _firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    if (documentId != null) {
      await _firestore.collection(path).doc(documentId).set(data);
    } else {
      await _firestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData({
    required String path,
    String? documentId,
    Map<String, dynamic>? query,
  }) async {
    if (documentId != null) {
      final doc = await _firestore.collection(path).doc(documentId).get();
      return doc.data();
    }
    final result = await _firestore.collection(path).get();
    return result.docs.map((doc) => doc.data()).toList();
  }

  @override
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  }) async {
    final doc = await _firestore.collection(path).doc(documentId).get();
    return doc.exists;
  }
}
