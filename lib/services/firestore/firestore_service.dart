import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sickler/global_components/snack_bar.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  FirestoreService({required this.uid});
  String uid;

////Adding UserProfile Info to Firestore
  addUserProfileInfo(
      {required String firstName,
      String? lastName,
      String? profileImg,
      required BuildContext context}) {
    Map<String, dynamic> userProfile = {
      "firstName": firstName,
      "lastName": lastName,
      "uid": uid,
      "profileimg": profileImg,
    };

    Map<String, Map> userProfiletoUpload = {"profile": userProfile};

    _firestore
        .collection("users")
        .doc(uid)
        .update(userProfiletoUpload)
        .then((value) {
      print("upload profile data succesful");
      //ScaffoldMessenger.of(context).showSnackBar(SicklerSnackBar(message: "Succes", success: false);
    }).onError((error, stackTrace) {
      print("upload profile info failed");
    });
  }

////Adding User Health info
  addUserHealthInfo({
    String? gender,
    int? age,
    double? height,
    double? weight,
    String? genotype,
  }) {
    Map<String, dynamic> userHealth = {
      "gender": gender,
      "age": age,
      "height": height,
      "weight": weight,
      "genotype": genotype,
    };

    Map<String, Map> userHealthtoUpload = {"health": userHealth};

    _firestore
        .collection("users")
        .doc(uid)
        .update(userHealthtoUpload)
        .then((value) {
      print("upload profile data succesful");
      //ScaffoldMessenger.of(context).showSnackBar(SicklerSnackBar(message: "Succes", success: false);
    }).onError((error, stackTrace) {
      print("upload profile info failed");
    });
  }

  ////Adding Water Data to Firestore
  void addWaterData({int? amount, DateTime? time}) async {
    Map<String, dynamic> waterDataMap = {
      "volume": amount,
      "time": time,
    };

    ///Turning data into an array

    Map<String, dynamic> waterDataToUpload = {
      'water': FieldValue.arrayUnion([waterDataMap])
    };

//get doc id
    QuerySnapshot querySnapshot = await _firestore
        .collection("users")
        .doc(uid)
        .collection("tracking")
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      // update data
      DocumentSnapshot document = querySnapshot.docs[0];

      final String trackingDocID = document.id;

      _firestore
          .collection("users")
          .doc(uid)
          .collection("tracking")
          .doc(trackingDocID)
          .update(waterDataToUpload)
          .then((value) {
        print("upload profile data succesful");
        //ScaffoldMessenger.of(context).showSnackBar(SicklerSnackBar(message: "Succes", success: false);
      }).onError((error, stackTrace) {
        print("upload profile info failed");
      });
    } else {
//add data
      _firestore
          .collection("users")
          .doc(uid)
          .collection("tracking")
          .add(waterDataToUpload)
          .then((value) {
        print("upload profile data succesful");
        //ScaffoldMessenger.of(context).showSnackBar(SicklerSnackBar(message: "Succes", success: false);
      }).onError((error, stackTrace) {
        print("upload profile info failed");
      });
    }
  }

  ///Add Meds
  addMedsData(
      {required String medName,
      int? medDose,
      int? daysLeft,
      int? medsMg,
      bool? recurring,
      String? frequency,
      List<DateTime>? time}) {
    Map<String, dynamic> medsDataMap = {
      "drugName": medName,
      "drugDose": medDose,
      "daysleft": daysLeft,
      "drugMg": medsMg,
      "recurring": recurring,
      "frequency": frequency,
      "time": time,
    };

    Map<String, dynamic> medsDataToUplooad = {
      "meds": FieldValue.arrayUnion([medsDataMap])
    };

    final String trackingDocID =
        _firestore.collection("users").doc(uid).collection("tracking").doc().id;

    ///uploading meds data
    _firestore
        .collection("users")
        .doc(uid)
        .collection("tracking")
        .doc(trackingDocID)
        .update(medsDataToUplooad)
        .then((value) {
      print("upload profile data succesful");
      //ScaffoldMessenger.of(context).showSnackBar(SicklerSnackBar(message: "Succes", success: false);
    }).onError((error, stackTrace) {
      print("upload profile info failed");
    });
  }

  ///Add Crisis
  addCrisis({required int painLevel, List<String>? painAreas, DateTime? time}) {
    Map<String, dynamic> crisisDataMap = {
      "painLevel": painLevel,
      "painArea": painAreas,
      "time": time,
    };

    Map<String, dynamic> crisisDataToUplooad = {
      "crisis": FieldValue.arrayUnion([crisisDataMap])
    };

    final String trackingDocID =
        _firestore.collection("users").doc(uid).collection("tracking").doc().id;

    _firestore
        .collection("users")
        .doc(uid)
        .collection("tracking")
        .doc(trackingDocID)
        .update(crisisDataToUplooad)
        .then((value) {
      print("upload profile data succesful");
      //ScaffoldMessenger.of(context).showSnackBar(SicklerSnackBar(message: "Succes", success: false);
    }).onError((error, stackTrace) {
      print("upload profile info failed");
    });
  }

  ///Add Oxygen
  addOxygen({required int oxygenPercentage, DateTime? time}) {
    Map<String, dynamic> oxygenDataMap = {
      "oxygen": oxygenPercentage,
      "time": time,
    };

    Map<String, dynamic> oxygenDataToUplooad = {
      "oxygen": FieldValue.arrayUnion([oxygenDataMap])
    };

    final String trackingDocID =
        _firestore.collection("users").doc(uid).collection("tracking").doc().id;

    _firestore
        .collection("users")
        .doc(uid)
        .collection("tracking")
        .doc(trackingDocID)
        .update(oxygenDataToUplooad)
        .then((value) {
      print("upload profile data succesful");
      //ScaffoldMessenger.of(context).showSnackBar(SicklerSnackBar(message: "Succes", success: false);
    }).onError((error, stackTrace) {
      print("upload profile info failed");
    });
  }

  ///Add HB
  addHb({required double hbValue, DateTime? time}) {
    Map<String, dynamic> hBDataMap = {
      "hb": hbValue,
      "time": time,
    };

    Map<String, dynamic> hBDataToUplooad = {
      "hb": FieldValue.arrayUnion([hBDataMap])
    };

    final String trackingDocID =
        _firestore.collection("users").doc(uid).collection("tracking").doc().id;

    _firestore
        .collection("users")
        .doc(uid)
        .collection("tracking")
        .doc(trackingDocID)
        .update(hBDataToUplooad)
        .then((value) {
      print("upload profile data succesful");
      //ScaffoldMessenger.of(context).showSnackBar(SicklerSnackBar(message: "Succes", success: false);
    }).onError((error, stackTrace) {
      print("upload profile info failed");
    });
  }

  ///Add Nutrition

  addNutrition(
      {required String foodName, DateTime? time, double? estCalories}) {
    Map<String, dynamic> nutritionDataMap = {
      "foodName": foodName,
      "time": time,
      "estCalories": estCalories,
    };

    Map<String, dynamic> nutritionDataToUplooad = {
      "nutrition": FieldValue.arrayUnion([nutritionDataMap])
    };

    final String trackingDocID =
        _firestore.collection("users").doc(uid).collection("tracking").doc().id;

    ///uploading crises data
    _firestore
        .collection("users")
        .doc(uid)
        .collection("tracking")
        .doc(trackingDocID)
        .update(nutritionDataToUplooad)
        .then((value) {
      print("upload profile data succesful");
      //ScaffoldMessenger.of(context).showSnackBar(SicklerSnackBar(message: "Succes", success: false);
    }).onError((error, stackTrace) {
      print("upload profile info failed");
    });
  }
}
