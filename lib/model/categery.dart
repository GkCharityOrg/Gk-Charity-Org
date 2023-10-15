// class Catogery {
//   final String image;
//   final String title;
//   final String place;

//   Catogery({required this.image, required this.title, required this.place});
// }

import 'dart:io';

class Doc {
  String _name, _sucat;
  int _phone;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  get sucat => _sucat;

  set title(value) {
    _sucat = sucat;
  }

  get phone => _phone;

  set phone(value) {
    _phone = value;
  }

  Doc(this._name, this._phone, this._sucat);
}

class Catogery {
  String _image, _title, _place;

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  get title => _title;

  set title(value) {
    _title = value;
  }

  get place => _place;

  set place(value) {
    _place = value;
  }

  Catogery(this._image, this._title, this._place);
}

List<Catogery> catTotalList = [];
List<CharityCategeryModle> catlist = [];
// List<DetailsModle> detlist = [];
List<Doc> catDoc = [];

List<Catogery> sampleMenList = [
  Catogery("assets/cws1.png", "Children welfare society", "Hyderabad"),
  Catogery("assets/ace.png", "Ace charitable trust", "Ankushapur"),
  Catogery("assets/zphs.png", "ZPHS", "Ghatkesar")
];
List<Catogery> sampleWomenList = [
  Catogery("assets/infra_img1.png", "Chairs", "Zphs"),
  Catogery("assets/infra_img2.png", "Toilets", "BC Welfare School"),
  Catogery("assets/infra_img3.png", "Play ground", "Amma Orphanage School")
];
List<Catogery> sampleKidsList = [
  Catogery("assets/schr_img1.jpeg", "G.Ramesh", "10th class"),
  Catogery("assets/schr_img1.jpeg", "T.Sriram", "B.TECh"),
  Catogery("assets/schr_img1.jpeg", "N.Shankar", "Intermediate")
];

class CategoriesModle {
  final String image;
  final String name;
  CategoriesModle({required this.image, required this.name});
}

class CharityCategeryModle {
  final Function? tap;
  // final String image;
  final String name;
  final String email;
  final String phone;
  final String address;
  final String request_type;
  final String description;
  final String place;
  // final List<String>? uploadedfile;

  CharityCategeryModle(
      {required this.name,
      required this.address,
      required this.description,
      required this.phone,
      required this.request_type,
      required this.place,
      required this.email,
      // required this.uploadedfile,
      this.tap});
}

// class FoodModle {
//   final String image;
//   final String name;
//   final String place;
//   FoodModle({required this.image, required this.name, required this.place});
// }

// class DetailsModle {
//   final Function? tap;
//   final String? name;
//   final String? place;
//   final String? address;
//   final String? phone;
//   final String? description;

//   final String? email;
//   final String? request_type;

//   DetailsModle(
//       {required this.name,
//       required this.place,
//       this.tap,
//       required this.address,
//       required this.request_type,
//       required this.phone,
//       required this.email,
//       required this.description});
// }

class CartModle {
  final String image;
  final String name;
  final int price;
  final int quantity;

  CartModle({
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
  });
}
// final List<Catogery> category1 = [
//   Catogery(
//       image: "assets/cws1.png",
//       title: "Children welfare society",
//       place: "Hyderabad"),
//   Catogery(image: "assets/zphs.png", title: "ZPHS", place: "Ghatkesar"),
//   Catogery(
//       image: "assets/ace.png",
//       title: "Ace charitable trust",
//       place: "Ankushapur"),
// ];
