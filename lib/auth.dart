import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
  var password;
  
  var email;
  
  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email
    required String password    
  }) async {
    await _firebaseAuth.sendSignInWithEmailAndPassword(
      email: email,
      password: password
    );
  }

  Future<void> createUserWithEmailAndPassword{(
    required String email,
    required String Password,
  )} async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email, 
      password: password
    );
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}