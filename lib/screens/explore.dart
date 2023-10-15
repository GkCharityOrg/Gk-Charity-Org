import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gk_educational_charity_org/model/categery.dart';
import 'package:gk_educational_charity_org/screens/volunteers.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});
  @override
  State<StatefulWidget> createState() {
    return _Explore();
  }
}

List<CharityCategeryModle> list = [];

// 1st
List<CategoriesModle> eduserviceList = [];

///2nd
List<CategoriesModle> infraList = [];
//3rd
List<CategoriesModle> scholarshipList = [];
//4th

List<CharityCategeryModle> eduCategoryList = [];
List<CharityCategeryModle> infraCategeryList = [];
List<CharityCategeryModle> scholarshipCategeryList = [];
String? myEmail;
String? fullName;
String? role;

class _Explore extends State<Explore> {
  @override
  void initState() {
    super.initState();
    catlist;
    // catTotalList.addAll(sampleMenList);
  }

  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context);
    provider.getEduServiceCategory();
    eduserviceList = provider.throweducationServiceList;
    provider.geteduServiceCategoriesList();
    eduCategoryList = provider.throweduServiceCategoriesList;
    provider.getInfraCategory();
    infraList = provider.throwinfraList;
    // //3rd

    provider.getScholorshipCategory();
    scholarshipList = provider.throwscholorshipList;

    provider.getinfraCategeriesList();
    infraCategeryList = provider.throwinfraCategeriesList;
    provider.getscholarshipCategeriesList();
    scholarshipCategeryList = provider.throwscholarshipCategeriesList;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: LayoutBuilder(builder: (context, constraint) {
        return Stack(clipBehavior: Clip.none, children: <Widget>[
          const Image(
            alignment: Alignment.center,
            image: AssetImage("assets/image3.png"),
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          Positioned(
            // top: 40,
            top: (constraint.maxHeight / 20),
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Explore",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'CentraleSansRegular'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 32,
                          fontFamily: 'CentraleSansRegular',
                          fontWeight: FontWeight.w100),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 20,
                          fontFamily: 'CentraleSansRegular',
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Positioned(
            top: (constraint.maxHeight / 10),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 1,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      catlist.clear();
                      setState(() {
                        catlist.addAll(eduCategoryList);

                        // onTap:
                        // () {
                        //   Navigator.of(context).pushReplacement(
                        //     MaterialPageRoute(
                        //       builder: (context) => DetailPage(
                        //         // image: e.image,
                        //         name: scholarshipCategeryList[0].name,
                        //         place: scholarshipCategeryList[0].place,
                        //       ),
                        //     ),
                        //   );
                        // };
                        var Index = 1;
                        print(eduCategoryList.length);
                        // catTotalList.addAll(sampleKidsList);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 0, bottom: 0, left: 10, right: 10),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.height * 0.16,
                          decoration: BoxDecoration(
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: const Border(),
                          ),
                          child: Image.asset("assets/children.png"),
                        ),
                        const Text(
                          "Education",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      catlist.clear();
                      setState(() {
                        catlist.addAll(infraCategeryList);
                        var Index = 1;
                        print(infraCategeryList.length);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 0, bottom: 0, left: 10, right: 10),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.height * 0.16,
                          decoration: BoxDecoration(
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: const Border(),
                          ),
                          child: Image.asset(
                            "assets/schoolarc.png",
                          ),
                        ),
                        const Text(
                          "Infrastructure",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      catlist.clear();
                      setState(() {
                        catlist.addAll(scholarshipCategeryList);
                        var Index = 1;
                        print(scholarshipCategeryList.length);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 0, bottom: 0, left: 10, right: 10),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.height * 0.16,
                          decoration: BoxDecoration(
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: const Border(),
                          ),
                          child: Image.asset(
                            "assets/scholarship.png",
                          ),
                        ),
                        const Text(
                          "Scolarship",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.5),
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  child: getCard(index, context),
                );
              },
              itemCount: catlist.length,
            ),
          ),
        ]);
      }),
    );
  }
}

/*
    Get the card item for a list
   */
getCard(int position, BuildContext context) {
  CharityCategeryModle model = catlist[position];
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => DetailPage(
            // image: e.image,
            name: model.name,
            place: model.place,
            address: model.address,
            phone: model.phone,
            description: model.description,
            request_for: model.request_type,
            email: model.email,
            // uploadedfile: model.uploadedfile,
          ),
        ),
      );
    },
    child: Card(
      margin: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 100,
        alignment: Alignment.center,
        child: ListTile(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // leading: Image.asset(
          //   model.,
          //   width: 70,
          // ),
          title: Text(
            model.name.toString(),
            style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                wordSpacing: 2,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            model.place.toString(),
            style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                wordSpacing: 2,
                letterSpacing: 2),
          ),
          trailing: const Icon(Icons.more_vert),
        ),
      ),
    ),
  );
}

class BottomContainer extends StatelessWidget {
  final String? name;
  // final String? image;
  final String? place;
  final Function() onTap;
  const BottomContainer({
    super.key,
    @required this.name,
    // @required this.image,
    this.place,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap(),
        child: Card(
          elevation: 4,
          shadowColor: Colors.black26,
          // margin: EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.all(10),
            // height: 20,
            alignment: Alignment.center,
            child: ListTile(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // leading: Image.asset(
              //   '',
              //   width: 70,
              // ),
              title: Text(
                name!,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    wordSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                place!,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    wordSpacing: 2,
                    letterSpacing: 2),
              ),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
        ));
  }
}

class DetailPage extends StatefulWidget {
  final String? name;
  final String? place;
  final String? description;
  final String? email;
  final String? phone;
  final String? request_for;
  final String? address;
  // final List<String>? uploadedfile;

  DetailPage({
    @required this.name,
    @required this.place,
    @required this.description,
    @required this.email,
    @required this.phone,
    @required this.request_for,
    @required this.address,
    // @required this.uploadedfile,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    // MyProvider provider = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Explore()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Place : ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      widget.place.toString(),
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  const Text(
                    "Name : ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.name!,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Requst For : ${widget.request_for}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Email : ${widget.email}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Phone Number : ${widget.phone}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Description : ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      widget.description.toString(),
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Full Address : ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      widget.address.toString(),
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Files Uploaded : ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: TextButton(
                  onPressed: () {
                    int position = 0;
                    CharityCategeryModle model = catlist[position];

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Volunteer(
                          // image: e.image,
                          name: model.name,
                          place: model.place,
                          address: model.address,
                          phone: model.phone,
                          description: model.description,
                          request_for: model.request_type,
                          email: model.email,
                          // uploadedfile: model.uploadedfile,
                        ),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      elevation: 2,
                      backgroundColor: Colors.blue),
                  child: const Text(
                    "Assign",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
