import 'dart:js_util';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:zeetionary/models/user.dart' as model;
// (image storage)import 'package:zeetionary/resources/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  finalFirebaseFirestore _firestore = FirebaseFirestore.instance;

  // sign up the user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    
  }) async {
    String res = "Some error occured";
    try {
      if(email.isNotEmpty || password.isNotEmpty || username.isNotEmpty || bio.isNotEmpty) {
        // register user 
        UserCredential cred _auth.createUserWithEmailAndPassword(email: email, password: password);
        
        print(cred.user.uid);
        // add user to our database
         
        await _firestore.collection('users').add({
          'username': username,
          'uid': cred.user!.uid,
          'email': email,
          'bio': bio,
          'followers': [],
          'following': [],
        });

        res =  "success"
      } catch(err) {
        res = err.toString();
      }
      return res;
  },

  // logging in users
  Future <String> LoginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error occured";

    try {
      if(email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(email: email, password: password)
        res = "success";
      } else {
        res = "Please all the fields"
      }
    } catch(err) {
      res = err.toString();
    }
    return res;
  }
}