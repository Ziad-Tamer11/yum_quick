import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:yum_quick/core/errors/failure.dart';

class FirebaseAuthService {
  Future<User> signUp({required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}",
      );
      if (e.code == 'weak-password') {
        throw ServerFailure('The password is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw ServerFailure('You already have an account. Please log in.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException('Please check your internet connection.');
      } else {
        throw CustomException('Something went wrong. Please try again.');
      }
    } catch (e) {
      log(
        "Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}",
      );
      throw CustomException('Something went wrong. Please try again.');
    }
  }

  Future<User> login({required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}",
      );
      if (e.code == 'user-not-found') {
        throw CustomException('Incorrect email or password.');
      } else if (e.code == 'wrong-password') {
        throw CustomException('Incorrect email or password.');
      } else if (e.code == 'invalid-credential') {
        throw CustomException('Incorrect email or password.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException('Please check your internet connection.');
      } else {
        throw CustomException('Something went wrong. Please try again.');
      }
    } catch (e) {
      log(
        "Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}",
      );
      throw CustomException('Something went wrong. Please try again.');
    }
  }

  // Future<User> signInWithGoogle() async {
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;

  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );

  //   return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  // }

  // Future<User> signInWithFacebook() async {
  //   final LoginResult loginResult = await FacebookAuth.instance.login();

  //   final OAuthCredential facebookAuthCredential =
  //       FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

  //   return (await FirebaseAuth.instance.signInWithCredential(
  //     facebookAuthCredential,
  //   )).user!;
  // }

  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  bool isLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }
}
