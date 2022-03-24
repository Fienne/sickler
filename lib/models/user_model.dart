


import 'package:flutter/material.dart';
import 'package:sickler/services/firebase_auth/firebase_auth_service.dart';


class SUser {
String? firstName;
String? lastName;
String? uid; 
String? email;
SUser({this.firstName, this.lastName, this.uid, this.email});

}

class SicklerUser extends ChangeNotifier{

SUser user = SUser(
   uid : FirebaseAuthService().getCurrentUser()!.uid,
 email  : FirebaseAuthService().getCurrentUser()!.email,
);

// String? uid = FirebaseAuthService().getCurrentUser()!.uid;
// String? email  = FirebaseAuthService().getCurrentUser()!.email;




}

