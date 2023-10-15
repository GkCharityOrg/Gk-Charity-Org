// // import 'package:flutter/material.dart';
// // import 'package:gk_educational_charity_org/model/categery.dart';

// // class Details extends StatelessWidget {
// //   const Details({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return (Scaffold(
// //       body: Container(
// //         margin: EdgeInsets.only(top: 370),
// //         height: 400,
// //         width: 400,
// //         child: ListView.builder(
// //             itemCount: category1.length,
// //             itemBuilder: (BuildContext context, int index) {
// //               return ListTile(
// //                 trailing: Icon(Icons.more_vert),
// //                 leading: Image.asset(
// //                   category1[index].image,
// //                   width: 70,
// //                 ),
// //                 title: Text(category1[index].title,
// //                     style: TextStyle(
// //                         fontFamily: "CentraleSansRegular",
// //                         fontSize: 18,
// //                         fontWeight: FontWeight.bold)),
// //                 subtitle: Text(category1[index].place,
// //                     style: TextStyle(
// //                       fontFamily: "CentraleSansRegular",
// //                       fontSize: 15,
// //                     )),
// //               );
// //             }),
// //       ),
// //     ));
// //   }
// // }
// import 'package:flutter/material.dart';

// import '../model/categery.dart';

// class Categories extends StatelessWidget {
//   List<FoodCategoriesModle> list = [];
//   Categories({required this.list});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(builder: (contet) => p2()));
//           },
//         ),
//       ),
//       body: GridView.count(
//           shrinkWrap: false,
//           primary: false,
//           crossAxisCount: 2,
//           childAspectRatio: 0.8,
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 20,
//           children: list
//               .map(
//                 (e) => BottomContainer(
//                   onTap: () {
//                     Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(
//                         builder: (context) => DetailPage(
//                           image: e.image,
//                           name: e.name,
//                           price: e.price,
//                         ),
//                       ),
//                     );
//                   },
//                   image: e.image,
//                   price: e.price,
//                   name: e.name,
//                 ),
//               )
//               .toList()),
//     );
//   }
// }
