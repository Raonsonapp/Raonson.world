import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signInEmail(String email, String pass) async {
    final result = await _auth.signInWithEmailAndPassword(
        email: email, password: pass);
    return result.user;
  }

  Future<User?> signUp(String email, String pass) async {
    final result = await _auth.createUserWithEmailAndPassword(
        email: email, password: pass);
    return result.user;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
