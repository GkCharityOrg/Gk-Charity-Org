import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:gk_educational_charity_org/model/applications.dart';

import '../model/categery.dart';

class MyProvider extends ChangeNotifier {
  List<CategoriesModle> educationService = [];
  CategoriesModle? educationServiceModle;
  Future<void> getEduServiceCategory() async {
    List<CategoriesModle> neweducationService = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categeries')
        .doc('GUn3mlQ6Nx8b96rkKabW')
        .collection('Children Education')
        .get();
    querySnapshot.docs.forEach((element) {
      educationServiceModle = CategoriesModle(
        image: element['image'],
        name: element['name'],
      );
      neweducationService.add(educationServiceModle!);
      educationService = neweducationService;
    });
    notifyListeners();
  }

  get throweducationServiceList {
    return educationService;
  }

  /////////////////// 2nd category ////////////////
  List<CategoriesModle> infraList = [];
  CategoriesModle? infraModle;
  Future<void> getInfraCategory() async {
    List<CategoriesModle> newinfraList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categeries')
        .doc('GUn3mlQ6Nx8b96rkKabW')
        .collection('Education')
        .get();
    querySnapshot.docs.forEach((element) {
      infraModle = CategoriesModle(
        image: element['image'],
        name: element['name'],
      );
      newinfraList.add(infraModle!);
      infraList = newinfraList;
    });
    notifyListeners();
  }

  get throwinfraList {
    return infraList;
  }

  /////////////// 3nd Category///////////////////////
  List<CategoriesModle> scholorshipList = [];
  CategoriesModle? scholorshipModle;
  Future<void> getScholorshipCategory() async {
    List<CategoriesModle> newscholorshipList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categeries')
        .doc('GUn3mlQ6Nx8b96rkKabW')
        .collection('Infra')
        .get();
    querySnapshot.docs.forEach((element) {
      scholorshipModle = CategoriesModle(
        image: element['image'],
        name: element['name'],
      );
      newscholorshipList.add(scholorshipModle!);
      scholorshipList = newscholorshipList;
    });
    notifyListeners();
  }

  get throwscholorshipList {
    return scholorshipList;
  }

  ///////////////eduService categories list//////////
  List<CharityCategeryModle> eduServiceCategoriesList = [];
  CharityCategeryModle? eduServiceCategoriesModle;
  Future<void> geteduServiceCategoriesList() async {
    List<CharityCategeryModle> neweduServiceCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('applicationDetails')
        .where("Request type", isEqualTo: 'Children Education')
        .get();
    for (var element in querySnapshot.docs) {
      eduServiceCategoriesModle = CharityCategeryModle(
        // image: element['image'],
        name: element['FullName'],
        place: element['Location'],
        email: element['Email'],
        address: element['Address'],
        phone: element['Phone'],
        description: element['Description'],
        request_type: element['Request type'],
        // uploadedfile: element['Uploads'],
      );
      neweduServiceCategoriesList.add(eduServiceCategoriesModle!);
      eduServiceCategoriesList = neweduServiceCategoriesList;
    }
  }

  get throweduServiceCategoriesList {
    return eduServiceCategoriesList;
  }

  ///////////////infra categories list//////////
  List<CharityCategeryModle> infraCategeriesList = [];
  CharityCategeryModle? infracategeryModel;
  Future<void> getinfraCategeriesList() async {
    List<CharityCategeryModle> newinfraCategeriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('applicationDetails')
        .where("Request type", isEqualTo: 'School Infrastructure')
        .get();
    querySnapshot.docs.forEach((element) {
      infracategeryModel = CharityCategeryModle(
        // image: element['image'],

        name: element['FullName'],
        place: element['Location'],
        email: element['Email'],
        address: element['Address'],
        phone: element['Phone'],
        description: element['Description'],
        request_type: element['Request type'],
        // uploadedfile: element['Uploads'],
      );
      newinfraCategeriesList.add(infracategeryModel!);
      infraCategeriesList = newinfraCategeriesList;
    });
  }

  get throwinfraCategeriesList {
    return infraCategeriesList;
  }

  ///////////////scholarship categories list//////////
  List<CharityCategeryModle> scholarshipCategeriesList = [];
  CharityCategeryModle? ScholarshipCategeryModle;
  Future<void> getscholarshipCategeriesList() async {
    List<CharityCategeryModle> newscholarshipCategeriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('applicationDetails')
        .where("Request type", isEqualTo: 'Scholarships')
        .get();
    querySnapshot.docs.forEach((element) {
      ScholarshipCategeryModle = CharityCategeryModle(
        // image: element['image'],
        name: element['FullName'],
        place: element['Location'],
        email: element['Email'],
        address: element['Address'],
        phone: element['Phone'],
        description: element['Description'],
        request_type: element['Request type'],
        // uploadedfile: element['Uploads'],
      );
      newscholarshipCategeriesList.add(ScholarshipCategeryModle!);
      scholarshipCategeriesList = newscholarshipCategeriesList;
    });
  }

  get throwscholarshipCategeriesList {
    return scholarshipCategeriesList;
  }

///// volunteer /////
  List<ApplicationModel> volunteers = [];
  ApplicationModel? volunteersList;
  Future<void> getVolunteers() async {
    List<ApplicationModel> newVolunteersList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where("Request type", isEqualTo: 'User')
        .get();
    querySnapshot.docs.forEach((element) {
      volunteers = ApplicationModel(
        // image: element['image'],

        email: element['email'], adress: '', description: '', fullname: '',
        phone: '',
        // place: element['Address'],
      ) as List<ApplicationModel>;
      newVolunteersList.add(volunteers as ApplicationModel);
      volunteers = newVolunteersList;
    });
  }

  get throwvolunteersList {
    return volunteersList;
  }

/////////////add to cart ////////////
  List<CartModle> cartList = [];
  List<CartModle> newCartList = [];
  CartModle? cartModle;
  void addToCart({
    @required String? image,
    @required String? name,
    @required int? price,
    @required int? quantity,
  }) {
    cartModle = CartModle(
      image: image!,
      name: name!,
      price: price!,
      quantity: quantity!,
    );
    newCartList.add(cartModle!);
    cartList = newCartList;
  }

  get throwCartList {
    return cartList;
  }

  int totalprice() {
    int total = 0;
    cartList.forEach((element) {
      total += element.price * element.quantity;
    });
    return total;
  }

  int? deleteIndex;
  void getDeleteIndex(int index) {
    deleteIndex = index;
  }

  void delete() {
    cartList.removeAt(deleteIndex!);
    notifyListeners();
  }
}
