import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  Stream<User?> authStateChanges = FirebaseAuth.instance.authStateChanges();

  AuthenticationService(this._firebaseAuth);

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String> signIn(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return 'sign in';
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  Future<String> signUp(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return 'sign up';
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }
}
