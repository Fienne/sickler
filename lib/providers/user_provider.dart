



import 'package:flutter/foundation.dart';
import 'package:sickler/services/firebase_auth/firebase_auth_service.dart';

import '../models/user_model.dart';

class SUserData extends ChangeNotifier{

SUser user = SUser(
  firstName: FirebaseAuthService().getCurrentUser()!.displayName,
   uid : FirebaseAuthService().getCurrentUser()!.uid,
 email  : FirebaseAuthService().getCurrentUser()!.email,
);

// String? uid = FirebaseAuthService().getCurrentUser()!.uid;
// String? email  = FirebaseAuthService().getCurrentUser()!.email;




}
