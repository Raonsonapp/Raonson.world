import 'package:cloud_firestore/cloud_firestore.dart';

class PremiumService {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  Future<void> setPremium(String uid) async {
    await users.doc(uid).update({"verified": true});
  }

  Future<void> removePremium(String uid) async {
    await users.doc(uid).update({"verified": false});
  }
}
