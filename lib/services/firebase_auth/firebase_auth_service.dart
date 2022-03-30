// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sickler/screens/homescreen/homescreen.dart';
import 'package:sickler/screens/info_gathering_screens/personal_info_gathering_screen.dart';

class FirebaseAuthService {
  ///Instantiating Firebae Auth
  final _auth = FirebaseAuth.instance;
  void registerUser(String email, String password, BuildContext context) async {
    try {
      final UserCredential? newUser = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      if (newUser != null) {
        Navigator.pushNamed(context, PersonalInfoGatheringScreen.id);
      }
    } catch (e) {
      print(e);
    }
  }

  User? getCurrentUser() {
    final User? currentUser = _auth.currentUser;

    // if (currentUser != null) {
    //   final _uid = currentUser.uid;
    //   final _email = currentUser.email;
    // }

    return currentUser;
  }

  void signIn(String email, String password, BuildContext context) async {
    try {
      final UserCredential? _loggedInUser = await _auth
          .signInWithEmailAndPassword(email: email, password: password);

      if (_loggedInUser != null) {
        // final _uid = _loggedInUser.user!.uid;
        // final _email = _loggedInUser.user!.email;
        Navigator.pushNamed(context, SicklerHomeScreen.id);
      }
    } catch (e) {
      print(e);
    }
  }

  void singOut() async {
    try {
      _auth.signOut();
    } catch (e) {
      print(e);
    }
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'profile',
        //'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );

    try {
      //Signs you into your google account

      GoogleSignInAccount? _googleUser = await _googleSignIn.signIn();
      //creates a google account on Firebase
      GoogleSignInAuthentication? _googleAuth =
          await _googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: _googleAuth.idToken, accessToken: _googleAuth.accessToken);
      UserCredential? _loggedInUser =
          await _auth.signInWithCredential(credential);
      
  
      // if (_loggedInUser != null) {
      //   final _uid = _loggedInUser.user!.uid;
      //   final _email = _loggedInUser.user!.email;
      // }

      // ignore: unnecessary_null_comparison
      if (_loggedInUser != null) {
        Navigator.pushNamed(context, PersonalInfoGatheringScreen.id);
      }
    } catch (e) {
      print(e);
    }
  }
}
