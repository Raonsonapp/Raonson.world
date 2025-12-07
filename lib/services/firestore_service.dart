import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  Future<void> createUser(String uid, Map<String, dynamic> data) {
    return users.doc(uid).set(data);
  }

  Stream<DocumentSnapshot> getUser(String uid) {
    return users.doc(uid).snapshots();
  }
}
