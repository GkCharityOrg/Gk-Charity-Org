import 'package:cloud_firestore/cloud_firestore.dart';

class ApplicationModel {
  String? id;
  String fullname;
  String email;
  String phone;
  String? req_type;
  String adress;
  dynamic data;
  String description;
  String? upload_File;

  // Constructor
  ApplicationModel({
    this.data,
    this.id,
    required this.fullname,
    required this.email,
    required this.phone,
    this.req_type,
    required this.adress,
    required this.description,
    this.upload_File,
  });
  toJson() {
    return {
      "Data": data,
      "FullName": fullname,
      "Email": email,
      "Phone": phone,
      "Request type": req_type,
      "Address": adress,
      "Description": description,
      "Uploads": upload_File
    };
  }

  factory ApplicationModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return ApplicationModel(
        data: data,
        id: document.id,
        fullname: data["FullName"],
        email: data["Email"],
        phone: data["Phone"],
        req_type: data["Request type"],
        adress: data["Address"],
        description: data["Description"],
        upload_File: data["Uploads"]);
  }
}
