import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/applications.dart';

class UserApplicationService extends GetxController {
  static UserApplicationService get instance => Get.find();
  final _db = FirebaseFirestore.instance;
  CreateAddFormDet(ApplicationModel applicationModel) async {
    await _db
        .collection("users")
        .add(applicationModel.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "data uploaded.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.1),
              colorText: Colors.green),
        )
        .catchError((error, stackTrace) {
      Get.snackbar("Error", "Something went wrong. Try again",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());
    });
  }

  Future<ApplicationModel> getApplicationDetails(String email) async {
    final snapshot =
        await _db.collection("users").where("Email", isEqualTo: email).get();
    final applicationData =
        snapshot.docs.map((e) => ApplicationModel.fromSnapshot(e)).single;
    return applicationData;
  }

  Future<List<ApplicationModel>> getAllApplications() async {
    final snapshot = await _db.collection("users").get();
    final applications =
        snapshot.docs.map((e) => ApplicationModel.fromSnapshot(e)).toList();
    return applications;
  }
}
