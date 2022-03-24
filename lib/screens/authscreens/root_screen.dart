import 'package:flutter/material.dart';
import 'package:sickler/screens/authscreens/sign_in_screen.dart';
import 'package:sickler/screens/homescreen/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sickler/services/firebase_auth/firebase_auth_service.dart';


enum AuthStatus {loggedIn, notLoggedIn}

class RootScreen extends StatefulWidget {
  static const id = "root screen";
  const RootScreen({ Key? key }) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {



 AuthStatus _authStatus = AuthStatus.notLoggedIn;


@override
  void didChangeDependencies() {
      
    super.didChangeDependencies();
    User? _currentUser = FirebaseAuthService().getCurrentUser();

    if(_currentUser !=null){
      setState(() {
         _authStatus = AuthStatus.loggedIn;
      });
     
    }
  } 


  @override
  Widget build(BuildContext context) {
    Widget screenToReturn = const SicklerSignInScreen();
    switch (_authStatus) {
      case  AuthStatus.notLoggedIn:
        screenToReturn = const SicklerSignInScreen();
        break;
         case  AuthStatus.loggedIn:
        screenToReturn = const SicklerHomeScreen();
        break;
      default:
    }
    return screenToReturn;
  }
}