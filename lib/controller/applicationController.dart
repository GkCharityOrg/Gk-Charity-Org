import 'package:get/get.dart';
import 'package:gk_educational_charity_org/services/applicationRepo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/applications.dart';

class ApplicationController extends GetxController {
  static ApplicationController get instance => Get.find();
  final _applicationRepo = Get.put(UserApplicationService());
  var itemsList = <ApplicationModel>[].obs;
  @override
  onInit() async {
    await getData();
  }

  getApplicationData() async {
    return await _applicationRepo.getAllApplications();

    // return _applicationRepo.getAllApplications();
  }

  CollectionReference _collectionRef =
      FirebaseFirestore.instance.collection('users');

  Future getData() async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await _collectionRef.get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    print(allData);
  }
}
