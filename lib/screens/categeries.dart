import 'package:flutter/material.dart';
import 'package:gk_educational_charity_org/screens/explore.dart';
import 'package:gk_educational_charity_org/model/categery.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class Categeries extends StatefulWidget {
  const Categeries({super.key});
  @override
  State<StatefulWidget> createState() {
    return _Categeries();
  }
}

List<CharityCategeryModle> list = [];

// 1st
List<CategoriesModle> eduserviceList = [];

///2nd
List<CategoriesModle> infraList = [];
//3rd
List<CategoriesModle> scholarshipList = [];

List<CharityCategeryModle> eduServiceCategoriesList = [];
List<CharityCategeryModle> infraCategoriesList = [];
List<CharityCategeryModle> sholarshipCategoriesList = [];
List<CharityCategeryModle> drinkCategoriesList = [];

class _Categeries extends State<Categeries> {
  Widget categoriesContainer(
      {@required String? image,
      @required String? name,
      required Function() OnTap}) {
    return GestureDetector(
      onTap: OnTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
            alignment: Alignment.center,
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              boxShadow: const <BoxShadow>[
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 0.75))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              border: Border(),
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(image!)),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              right: 100,
              child: Text(
                name!,
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }

  ////1st
  Widget eduService() {
    return Row(
      children: eduserviceList
          .map((e) => categoriesContainer(
              image: e.image,
              name: e.name,
              OnTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Cat(
                      list: eduServiceCategoriesList,
                    ),
                  ),
                );
              }))
          .toList(),
    );
  }

////2nd
  Widget infra() {
    return Row(
      children: infraList
          .map((e) => categoriesContainer(
                image: e.image,
                name: e.name,
                OnTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Cat(list: infraCategoriesList),
                    ),
                  );
                },
              ))
          .toList(),
    );
  }

  //3rd
  Widget sholarship() {
    return Row(
      children: scholarshipList
          .map(
            (e) => categoriesContainer(
              image: e.image,
              name: e.name,
              OnTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Cat(list: sholarshipCategoriesList),
                  ),
                );
              },
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context);
    // 1st
    provider.getEduServiceCategory();
    eduserviceList = provider.throweducationServiceList;
    // // 2nd
    provider.getInfraCategory();
    infraList = provider.throwinfraList;
    // //3rd

    provider.getScholorshipCategory();
    scholarshipList = provider.throwscholorshipList;

    provider.getEduServiceCategory();
    eduServiceCategoriesList = provider.throweduServiceCategoriesList;
    provider.getinfraCategeriesList();
    infraCategoriesList = provider.throwinfraCategeriesList;
    provider.getscholarshipCategeriesList();
    sholarshipCategoriesList = provider.throwscholarshipCategeriesList;

    return Material(
      child: Stack(
        children: <Widget>[
          const Positioned(
            child: Image(
              alignment: Alignment.center,
              image: AssetImage("assets/image3.png"),
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
          Positioned(
            top: 40,
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
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            margin: const EdgeInsets.only(top: 110),
            height: 300,
            width: 450,
            child: Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  eduService(),
                  infra(),
                  sholarship(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 350),
              child: GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 1,
                  childAspectRatio: 4,
                  children: list
                      .map(
                        (e) => BottomContainer(
                          onTap: () {
                            // Navigator.of(context).pushReplacement(
                            //   MaterialPageRoute(
                            //     builder: (context) => DetailPage(
                            //       image: e.image,
                            //       name: e.name,
                            //       place: e.place,
                            //     ),
                            //   ),
                            // );
                          },
                          // image: e.image,
                          place: e.place,
                          name: e.name,
                        ),
                      )
                      .toList()),
            ),
          )
        ],
        //   ),
        // ],
        // ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Cat extends StatelessWidget {
  List<CharityCategeryModle> list = [];
  Cat({required this.list});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (contet) => Categeries()));
          },
        ),
      ),
      body: GridView.count(
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 1,
          childAspectRatio: 2.4,
          // crossAxisSpacing: 20,
          // mainAxisSpacing: 20,
          children: list
              .map(
                (e) => BottomContainer(
                  onTap: () {
                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailPage(
                    //       image: e.image,
                    //       name: e.name,
                    //       place: e.place,
                    //     ),
                    //   ),
                    // );
                  },
                  // image: e.image,
                  place: e.place,
                  name: e.name,
                ),
              )
              .toList()),
    );
  }
}
