import 'package:zeetionary/firebase/core/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// AuthController provider
final authControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) {
  return AuthController();
});

// AuthStateChange provider
final authStateChangeProvider = StreamProvider((ref) {
  final authController = ref.watch(authControllerProvider.notifier);
  return authController.authStateChange;
});

class AuthController extends StateNotifier<bool> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  AuthController() : super(false);

  Stream<User?> get authStateChange => _auth.authStateChanges();

  Future<void> signInWithGoogle(BuildContext context) async {
    state = true;
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        state = false;
        return; // The user canceled the sign-in
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _auth.signInWithCredential(credential);
    } catch (error) {
      if (!context.mounted) return;
      showSnackBar(context, error.toString());
    } finally {
      state = false;
    }
  }

  Future<void> logout() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:zeetionary/firebase/core/utils.dart';
// import 'package:zeetionary/firebase/features/auth/repository/auth_repository.dart';
// import 'package:zeetionary/firebase/models/user_model.dart';

// final userProvider = StateProvider<UserModel?>((ref) => null);

// final authControllerProvider = StateNotifierProvider<AuthController, bool>(
//   (ref) => AuthController(
//     authRepository: ref.watch(authRepositoryProvider),
//     ref: ref,
//   ),
// );

// final authStateChangeProvider = StreamProvider((ref) {
//   final authController = ref.watch(authControllerProvider.notifier);
//   return authController.authStateChange;
// });

// final getUserDataProvider = StreamProvider.family((ref, String uid) {
//   final authController = ref.watch(authControllerProvider.notifier);
//   return authController.getUserData(uid);
// });

// // class AuthController extends StateNotifier<bool> {
// //   final AuthRepository _authRepository;
// //   final Ref _ref;
// //   AuthController({required AuthRepository authRepository, required Ref ref})
// //       : _authRepository = authRepository,
// //         _ref = ref,
// //         super(false);

// //   Stream<User?> get authStateChange => _authRepository.authStateChange;

// //   void signInWithGoogle(BuildContext context) async {
// //     state = true;
// //     final user = await _authRepository.signInWithGoogle();
// //     state = false;
// //     user.fold(
// //       (l) => showSnackBar(context, l.message),
// //       (userModel) =>
// //           _ref.read(userProvider.notifier).update((state) => userModel),
// //     );
// //   }

// //   Stream<UserModel> getUserData(String uid) {
// //     return _authRepository.getUserData(uid);
// //   }

// //   void logout() async {
// //     _authRepository.logOut();
// //   }
// // }
