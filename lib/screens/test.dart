import 'package:flutter/material.dart';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../model/categery.dart';

// class CartModle {
//   final String image;
//   final String name;
//   final int price;
//   final int quantity;

//   CartModle({
//     required this.image,
//     required this.name,
//     required this.price,
//     required this.quantity,
//   });
// }

// class FoodCategoriesModle {
//   final String image;
//   final String name;
//   final int price;
//   FoodCategoriesModle(
//       {required this.image, required this.name, required this.price});
// }

// class FoodModle {
//   final String image;
//   final String name;
//   final int price;
//   FoodModle({required this.image, required this.name, required this.price});
// }

// class MyProvider extends ChangeNotifier {
//   List<CategoriesModle> burgerList = [];
//   CategoriesModle? burgerModle;
//   Future<void> getBurgerCategory() async {
//     List<CategoriesModle> newBurgerList = [];
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//         .collection('categories')
//         .doc('XhXjlgjk2ffXtCnAD1Ms')
//         .collection('Burger')
//         .get();
//     querySnapshot.docs.forEach((element) {
//       burgerModle = CategoriesModle(
//         image: element.get('image'),
//         name: element.get('name'),
//       );
//       newBurgerList.add(burgerModle!);
//       burgerList = newBurgerList;
//     });
//     notifyListeners();
//   }

//   get throwBurgerList {
//     return burgerList;
//   }

//   /////////////////// 2nd category ////////////////
//   List<CategoriesModle> recipeList = [];
//   CategoriesModle? recipeModle;
//   Future<void> getRecipeCategory() async {
//     List<CategoriesModle> newRecipeList = [];
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//         .collection('categories')
//         .doc('XhXjlgjk2ffXtCnAD1Ms')
//         .collection('Recipe')
//         .get();
//     querySnapshot.docs.forEach((element) {
//       recipeModle = CategoriesModle(
//         image: element.get('image'),
//         name: element.get('name'),
//       );
//       newRecipeList.add(recipeModle!);
//       recipeList = newRecipeList;
//     });
//     notifyListeners();
//   }

//   get throwRecipeList {
//     return recipeList;
//   }

//   /////////////// 3nd Category///////////////////////
//   List<CategoriesModle> pizzaList = [];
//   CategoriesModle? pizzaModle;
//   Future<void> getPizzaCategory() async {
//     List<CategoriesModle> newPizzaList = [];
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//         .collection('categories')
//         .doc('XhXjlgjk2ffXtCnAD1Ms')
//         .collection('Pizza')
//         .get();
//     querySnapshot.docs.forEach((element) {
//       pizzaModle = CategoriesModle(
//         image: element.get('image'),
//         name: element.get('name'),
//       );
//       newPizzaList.add(pizzaModle!);
//       pizzaList = newPizzaList;
//     });
//     notifyListeners();
//   }

//   get throwPizzaList {
//     return pizzaList;
//   }

// /////////////////4th category /////////////
//   List<CategoriesModle> drinkList = [];
//   CategoriesModle? drinkModle;
//   Future<void> getDrinkCategory() async {
//     List<CategoriesModle> newDrinkList = [];
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//         .collection('categories')
//         .doc('XhXjlgjk2ffXtCnAD1Ms')
//         .collection('Drink')
//         .get();
//     querySnapshot.docs.forEach((element) {
//       drinkModle = CategoriesModle(
//         image: element.get('image'),
//         name: element.get('name'),
//       );
//       newDrinkList.add(drinkModle!);
//       drinkList = newDrinkList;
//     });
//     notifyListeners();
//   }

//   get throwDrinkList {
//     return drinkList;
//   }

//   /////////////////////  Single Food Item     //////////////////////////
//   List<FoodModle> foodModleList = [];
//   FoodModle? foodModle;
//   Future<void> getFoodList() async {
//     List<FoodModle> newSingleFoodList = [];
//     QuerySnapshot querySnapshot =
//         await FirebaseFirestore.instance.collection('Foods').get();
//     querySnapshot.docs.forEach(
//       (element) {
//         foodModle = FoodModle(
//           name: element.get('name'),
//           image: element.get('image'),
//           price: element.get('price'),
//         );
//         newSingleFoodList.add(foodModle!);
//       },
//     );

//     foodModleList = newSingleFoodList;
//     notifyListeners();
//   }

//   get throwFoodModleList {
//     return foodModleList;
//   }

//   ///////////////burger categories list//////////
//   List<FoodCategoriesModle> burgerCategoriesList = [];
//   FoodCategoriesModle? burgerCategoriesModle;
//   Future<void> getBurgerCategoriesList() async {
//     List<FoodCategoriesModle> newBurgerCategoriesList = [];
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//         .collection('foodcategories')
//         .doc('8Dtfnhwbi1cDkCrX02rA')
//         .collection('burger')
//         .get();
//     querySnapshot.docs.forEach((element) {
//       burgerCategoriesModle = FoodCategoriesModle(
//         image: element.get("image"),
//         name: element.get('name'),
//         price: element.get('price'),
//       );
//       newBurgerCategoriesList.add(burgerCategoriesModle!);
//       burgerCategoriesList = newBurgerCategoriesList;
//     });
//   }

//   get throwBurgerCategoriesList {
//     return burgerCategoriesList;
//   }

//   ///////////////Recipe categories list//////////
//   List<FoodCategoriesModle> recipeCategoriesList = [];
//   FoodCategoriesModle? recipeCategoriesModle;
//   Future<void> getrecipeCategoriesList() async {
//     List<FoodCategoriesModle> newrecipeCategoriesList = [];
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//         .collection('foodcategories')
//         .doc('8Dtfnhwbi1cDkCrX02rA')
//         .collection('recipe')
//         .get();
//     querySnapshot.docs.forEach((element) {
//       recipeCategoriesModle = FoodCategoriesModle(
//         image: element.get("image"),
//         name: element.get('name'),
//         price: element.get('price'),
//       );
//       newrecipeCategoriesList.add(recipeCategoriesModle!);
//       recipeCategoriesList = newrecipeCategoriesList;
//     });
//   }

//   get throwRecipeCategoriesList {
//     return recipeCategoriesList;
//   }

//   ///////////////Pizza categories list//////////
//   List<FoodCategoriesModle> pizzaCategoriesList = [];
//   FoodCategoriesModle? pizzaCategoriesModle;
//   Future<void> getPizzaCategoriesList() async {
//     List<FoodCategoriesModle> newPizzaCategoriesList = [];
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//         .collection('foodcategories')
//         .doc('8Dtfnhwbi1cDkCrX02rA')
//         .collection('Pizza')
//         .get();
//     querySnapshot.docs.forEach((element) {
//       pizzaCategoriesModle = FoodCategoriesModle(
//         image: element.get("image"),
//         name: element.get('name'),
//         price: element.get('price'),
//       );
//       newPizzaCategoriesList.add(pizzaCategoriesModle!);
//       pizzaCategoriesList = newPizzaCategoriesList;
//     });
//   }

//   get throwPizzaCategoriesList {
//     return pizzaCategoriesList;
//   }

//   ///////////////Drink categories list//////////
//   List<FoodCategoriesModle> drinkCategoriesList = [];
//   FoodCategoriesModle? drinkCategoriesModle;
//   Future<void> getDrinkCategoriesList() async {
//     List<FoodCategoriesModle> newDrinkCategoriesList = [];
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//         .collection('foodcategories')
//         .doc('8Dtfnhwbi1cDkCrX02rA')
//         .collection('drink')
//         .get();
//     querySnapshot.docs.forEach((element) {
//       drinkCategoriesModle = FoodCategoriesModle(
//         image: element.get("image"),
//         name: element.get('name'),
//         price: element.get('price'),
//       );
//       newDrinkCategoriesList.add(drinkCategoriesModle!);
//       drinkCategoriesList = newDrinkCategoriesList;
//     });
//   }

//   get throwDrinkCategoriesList {
//     return drinkCategoriesList;
//   }

// /////////////add to cart ////////////
//   List<CartModle> cartList = [];
//   List<CartModle> newCartList = [];
//   CartModle? cartModle;
//   void addToCart({
//     required String image,
//     required String name,
//     required int price,
//     required int quantity,
//   }) {
//     cartModle = CartModle(
//       image: image,
//       name: name,
//       price: price,
//       quantity: quantity,
//     );
//     newCartList.add(cartModle!);
//     cartList = newCartList;
//   }

//   get throwCartList {
//     return cartList;
//   }

//   int totalprice() {
//     int total = 0;
//     cartList.forEach((element) {
//       total += element.price * element.quantity;
//     });
//     return total;
//   }

//   int? deleteIndex;
//   void getDeleteIndex(int index) {
//     deleteIndex = index;
//   }

//   void delete() {
//     cartList.removeAt(deleteIndex!);
//     notifyListeners();
//   }
// }

// class TestHomePage extends StatefulWidget {
//   @override
//   _TestHomePageState createState() => _TestHomePageState();
// }

// class _TestHomePageState extends State<TestHomePage> {
//   // 1st
//   List<CategoriesModle> burgerList = [];

//   ///2nd
//   List<CategoriesModle> recipeList = [];
//   //3rd
//   List<CategoriesModle> pizzaList = [];
//   //4th
//   List<CategoriesModle> drinkList = [];

//   List<FoodModle> singleFoodList = [];

//   List<FoodCategoriesModle> burgerCategoriesList = [];
//   List<FoodCategoriesModle> recipeCategoriesList = [];
//   List<FoodCategoriesModle> pizzaCategoriesList = [];
//   List<FoodCategoriesModle> drinkCategoriesList = [];

//   Widget categoriesContainer(
//       {@required Function? onTap,
//       @required String? image,
//       @required String? name}) {
//     return Column(
//       children: [
//         GestureDetector(
//           // onTap: onTap,
//           child: Container(
//             margin: EdgeInsets.only(left: 20),
//             height: 80,
//             width: 80,
//             decoration: BoxDecoration(
//               image: DecorationImage(image: NetworkImage(image!)),
//               color: Colors.grey,
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           name!,
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//           ),
//         )
//       ],
//     );
//   }

//   Widget drawerItem({@required String? name, @required IconData? icon}) {
//     return ListTile(
//       leading: Icon(
//         icon,
//         color: Colors.white,
//       ),
//       title: Text(
//         name!,
//         style: TextStyle(fontSize: 20, color: Colors.white),
//       ),
//     );
//   }

//   ////1st
//   Widget burger() {
//     return Row(
//       children: burgerList
//           .map((e) => categoriesContainer(
//               image: e.image,
//               name: e.name,
//               onTap: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => Categories(
//                       list: burgerCategoriesList,
//                     ),
//                   ),
//                 );
//               }))
//           .toList(),
//     );
//   }

// ////2nd
//   Widget recipe() {
//     return Row(
//       children: recipeList
//           .map((e) => categoriesContainer(
//                 image: e.image,
//                 name: e.name,
//                 onTap: () {
//                   Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(
//                       builder: (context) =>
//                           Categories(list: recipeCategoriesList),
//                     ),
//                   );
//                 },
//               ))
//           .toList(),
//     );
//   }

//   //3rd
//   Widget pizza() {
//     return Row(
//       children: pizzaList
//           .map(
//             (e) => categoriesContainer(
//               image: e.image,
//               name: e.name,
//               onTap: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => Categories(list: pizzaCategoriesList),
//                   ),
//                 );
//               },
//             ),
//           )
//           .toList(),
//     );
//   }

//   /////4th
//   Widget drink() {
//     return Row(
//       children: drinkList
//           .map(
//             (e) => categoriesContainer(
//               image: e.image,
//               name: e.name,
//               onTap: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => Categories(list: drinkCategoriesList),
//                   ),
//                 );
//               },
//             ),
//           )
//           .toList(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     MyProvider provider = Provider.of<MyProvider>(context);
//     // 1st
//     provider.getBurgerCategory();
//     burgerList = provider.throwBurgerList;
//     //2nd
//     provider.getRecipeCategory();
//     recipeList = provider.throwRecipeList;
//     //3rd
//     provider.getDrinkCategory();
//     drinkList = provider.throwDrinkList;
//     // 4th
//     provider.getPizzaCategory();
//     pizzaList = provider.throwPizzaList;
//     //////////////single food list/////////
//     provider.getFoodList();
//     singleFoodList = provider.throwFoodModleList;
//     provider.getBurgerCategoriesList();
//     burgerCategoriesList = provider.throwBurgerCategoriesList;
//     provider.getrecipeCategoriesList();
//     recipeCategoriesList = provider.throwRecipeCategoriesList;
//     provider.getPizzaCategoriesList();
//     pizzaCategoriesList = provider.throwPizzaCategoriesList;
//     provider.getDrinkCategoriesList();
//     drinkCategoriesList = provider.throwDrinkCategoriesList;
//     return Scaffold(
//       drawer: Drawer(
//         child: Container(
//           color: Color(0xff2b2b2b),
//           child: SafeArea(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 UserAccountsDrawerHeader(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: AssetImage('images/background.jpg'),
//                     ),
//                   ),
//                   currentAccountPicture: CircleAvatar(
//                     backgroundImage: AssetImage('images/profile.jpg'),
//                   ),
//                   accountName: Text("Flutter Baba"),
//                   accountEmail: Text("AqeelBaloch@gmail.com"),
//                 ),
//                 drawerItem(icon: Icons.person, name: "Profile"),
//                 drawerItem(icon: Icons.add_shopping_cart, name: "Cart"),
//                 drawerItem(icon: Icons.shop, name: "Order"),
//                 Divider(
//                   thickness: 2,
//                   color: Colors.white,
//                 ),
//                 ListTile(
//                   leading: Text(
//                     "Comunicate",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 // Text(
//                 //   "Comunicate",
//                 //   style: TextStyle(
//                 //     color: Colors.white,
//                 //     fontSize: 20,
//                 //   ),
//                 // ),
//                 drawerItem(icon: Icons.lock, name: "Change"),
//                 drawerItem(icon: Icons.exit_to_app, name: "Log Out"),
//               ],
//             ),
//           ),
//         ),
//       ),
//       appBar: AppBar(
//         elevation: 0.0,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(9.0),
//             child: CircleAvatar(
//               backgroundImage: AssetImage('images/profile.jpg'),
//             ),
//           )
//         ],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: TextField(
//               decoration: InputDecoration(
//                   hintText: "Search Food",
//                   hintStyle: TextStyle(color: Colors.white),
//                   prefixIcon: Icon(
//                     Icons.search,
//                     color: Colors.white,
//                   ),
//                   filled: true,
//                   fillColor: Color(0xff3a3e3e),
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide.none,
//                       borderRadius: BorderRadius.circular(10))),
//             ),
//           ),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 burger(),
//                 recipe(),
//                 pizza(),
//                 drink(),
//                 // categoriesContainer(image: 'images/1.png', name: "All"),
//                 // categoriesContainer(image: 'images/2.png', name: "Burger"),
//                 // categoriesContainer(image: 'images/3.png', name: "Recipe"),
//                 // categoriesContainer(image: 'images/4.png', name: "Pizza"),
//                 // categoriesContainer(image: 'images/5.png', name: "Drink"),
//               ],
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 10),
//             height: 510,
//             child: GridView.count(
//                 shrinkWrap: false,
//                 primary: false,
//                 crossAxisCount: 2,
//                 childAspectRatio: 0.8,
//                 crossAxisSpacing: 20,
//                 mainAxisSpacing: 20,
//                 children: singleFoodList
//                     .map(
//                       (e) => BottomContainer(
//                         onTap: () {
//                           Navigator.of(context).pushReplacement(
//                             MaterialPageRoute(
//                               builder: (context) => DetailPage(
//                                 image: e.image,
//                                 name: e.name,
//                                 price: e.price,
//                               ),
//                             ),
//                           );
//                         },
//                         image: e.image,
//                         price: e.price,
//                         name: e.name,
//                       ),
//                     )
//                     .toList()
//                 // children: [
//                 //   // bottonContainer(
//                 //   //   image: 'images/2.png',
//                 //   //   name: 'burger1',
//                 //   //   price: 12,
//                 //   // ),
//                 //   // bottonContainer(
//                 //   //   image: 'images/2.png',
//                 //   //   name: 'burger1',
//                 //   //   price: 12,
//                 //   // ),
//                 //   // bottonContainer(
//                 //   //   image: 'images/2.png',
//                 //   //   name: 'burger1',
//                 //   //   price: 12,
//                 //   // ),
//                 //   // bottonContainer(
//                 //   //   image: 'images/2.png',
//                 //   //   name: 'burger1',
//                 //   //   price: 12,
//                 //   // ),
//                 // ],
//                 ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class DetailPage extends StatefulWidget {
//   final String? image;
//   final int? price;
//   final String? name;
//   DetailPage({@required this.image, @required this.name, @required this.price});

//   @override
//   _DetailPageState createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   int quantity = 1;
//   @override
//   Widget build(BuildContext context) {
//     MyProvider provider = Provider.of<MyProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(builder: (context) => TestHomePage()));
//           },
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               child: CircleAvatar(
//                 radius: 110,
//                 backgroundImage: NetworkImage(widget.image!),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   color: Color(0xff3a3e3e),
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(10))),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     widget.name!,
//                     style: TextStyle(fontSize: 40, color: Colors.white),
//                   ),
//                   Text(
//                     "Any text..",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 if (quantity > 1) quantity--;
//                               });
//                             },
//                             child: Container(
//                               height: 40,
//                               width: 40,
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10)),
//                               child: Icon(Icons.remove),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             '$quantity',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 quantity++;
//                               });
//                             },
//                             child: Container(
//                               height: 40,
//                               width: 40,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: Icon(
//                                 Icons.add,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Text(
//                         "\$${widget.price! * quantity}",
//                         style: TextStyle(color: Colors.white, fontSize: 30),
//                       )
//                     ],
//                   ),
//                   Text(
//                     "Descipation",
//                     style: TextStyle(
//                         fontSize: 25,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     "The customer app is the one that the customer is going to use. That is the briefest description for this app. The customer app helps the customer to access the online food ordering platforms, search for the right restaurant or the dish they want to order, place their orders and pay easily.",
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                   Container(
//                     height: 55,
//                     width: double.infinity,
//                     child: TextButton(
//                       onPressed: () {
//                         provider.addToCart(
//                           image: widget.image!,
//                           name: widget.name!,
//                           price: widget.price!,
//                           quantity: quantity,
//                         );
//                         // Navigator.of(context).pushReplacement(
//                         //   MaterialPageRoute(
//                         //     builder: (context) => CartPage(),
//                         //   ),
//                         // );
//                       },
//                       // shape: RoundedRectangleBorder(
//                       //   borderRadius: BorderRadius.circular(10),
//                       // ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.shopping_cart,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             "Add to Cart",
//                             style: TextStyle(fontSize: 20, color: Colors.white),
//                           )
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class Categories extends StatelessWidget {
//   List<FoodCategoriesModle>? list = [];
//   Categories({@required this.list});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(builder: (contet) => TestHomePage()));
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
//           children: list!
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

// class BottomContainer extends StatelessWidget {
//   final String? image;
//   final String? name;
//   final int? price;
//   final Function? onTap;
//   BottomContainer(
//       {@required this.onTap,
//       @required this.image,
//       @required this.price,
//       @required this.name});
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       // onTap:onTap ,
//       child: Container(
//         height: 270,
//         width: 220,
//         decoration: BoxDecoration(
//             color: Color(0xff3a3e3e), borderRadius: BorderRadius.circular(20)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 60,
//               backgroundImage: NetworkImage(image!),
//             ),
//             ListTile(
//               leading: Text(
//                 name!,
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//               trailing: Text(
//                 "\$ $price",
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 12),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.star,
//                     size: 20,
//                     color: Colors.white,
//                   ),
//                   Icon(
//                     Icons.star,
//                     size: 20,
//                     color: Colors.white,
//                   ),
//                   Icon(
//                     Icons.star,
//                     size: 20,
//                     color: Colors.white,
//                   ),
//                   Icon(
//                     Icons.star,
//                     size: 20,
//                     color: Colors.white,
//                   ),
//                   Icon(
//                     Icons.star,
//                     size: 20,
//                     color: Colors.white,
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyTextField extends StatelessWidget {
//   final String? hintText;
//   final bool? obscureText;
//   final TextEditingController? controller;
//   MyTextField(
//       {@required this.hintText, this.obscureText, @required this.controller});
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       obscureText: obscureText!,
//       style: TextStyle(color: Colors.white),
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: TextStyle(color: Colors.white),
//         enabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             color: Colors.grey,
//           ),
//         ),
//       ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'package:gk_educational_charity_org/model/categery.dart';
// // import 'package:line_awesome_flutter/line_awesome_flutter.dart';

// // /*
// // These are the sample list for demo
// //  */
// // // List<ItemVO> mainList = [];
// // // List<ItemVO> sampleMenList = [
// // //   ItemVO("1", "Mens 1"),
// // //   ItemVO("2", "Mens 2"),
// // //   ItemVO("3", "Mens 3")
// // // ];
// // // List<ItemVO> sampleWomenList = [
// // //   ItemVO("1", "Women 1"),
// // //   ItemVO("2", "Women 2"),
// // //   ItemVO("3", "Women 3")
// // // ];
// // // List<ItemVO> sampleKidsList = [
// // //   ItemVO("1", "kids 1"),
// // //   ItemVO("2", "kids 2"),
// // //   ItemVO("3", "kids 3")
// // // ];

// // class TestScreen extends StatefulWidget {
// //   const TestScreen({super.key});

// //   override
// //   State<StatefulWidget> createState() {
// //     return _TestScreen();
// //   }
// // }

// // class _TestScreen extends State<TestScreen> {
// //   override
// //   void initState() {
// //     super.initState();
// //     catTotalList.addAll(sampleMenList);
// //   }

// //   override
// //   Widget build(BuildContext context) {
// //     return Material(
// //         child: Stack(children: <Widget>[
// //       Positioned(
// //         child: Image(
// //           alignment: Alignment.center,
// //           image: AssetImage("assets/image3.png"),
// //           fit: BoxFit.contain,
// //           width: double.infinity,
// //         ),
// //       ),
// //       Positioned(
// //         top: 40,
// //         left: 30,
// //         right: 30,
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: <Widget>[
// //             const Align(
// //               alignment: Alignment.centerRight,
// //               child: Icon(
// //                 LineAwesomeIcons.search,
// //                 color: Colors.white,
// //                 size: 30,
// //               ),
// //             ),
// //             const Text(
// //               "Explore",
// //               style: TextStyle(
// //                   color: Colors.white,
// //                   fontSize: 35,
// //                   fontFamily: 'CentraleSansRegular'),
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: <Widget>[
// //                 Text(
// //                   "Categories",
// //                   style: TextStyle(
// //                       color: Colors.grey[300],
// //                       fontSize: 32,
// //                       fontFamily: 'CentraleSansRegular',
// //                       fontWeight: FontWeight.w100),
// //                 ),
// //                 Text(
// //                   "View All",
// //                   style: TextStyle(
// //                       color: Colors.grey[300],
// //                       fontSize: 20,
// //                       fontFamily: 'CentraleSansRegular',
// //                       fontWeight: FontWeight.w100),
// //                 ),
// //               ],
// //             )
// //           ],
// //         ),
// //       ),
// //       Container(
// //         padding: EdgeInsets.only(bottom: 10),
// //         margin: EdgeInsets.only(top: 110),
// //         height: 300,
// //         width: 450,
// //         child: ListView(
// //           shrinkWrap: true,
// //           scrollDirection: Axis.horizontal,
// //           children: <Widget>[
// //             GestureDetector(
// //               onTap: () {
// //                 catTotalList.clear();
// //                 setState(() {
// //                   catTotalList.addAll(sampleMenList);
// //                 });
// //               },
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Container(
// //                     margin:
// //                         EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
// //                     // alignment: Alignment.center,
// //                     height: 140,
// //                     width: 140,
// //                     decoration: BoxDecoration(
// //                       boxShadow: <BoxShadow>[
// //                         BoxShadow(
// //                             color: Colors.black,
// //                             blurRadius: 15.0,
// //                             offset: Offset(0.0, 0.75))
// //                       ],
// //                       color: Colors.white,
// //                       borderRadius: BorderRadius.circular(100),
// //                       border: Border(),
// //                     ),
// //                     child: Image.asset("assets/children.png"),
// //                   ),
// //                   Positioned(
// //                       top: 0,
// //                       bottom: 0,
// //                       right: 100,
// //                       child: Text(
// //                         "Education",
// //                         style: TextStyle(
// //                             fontSize: 23,
// //                             color: Colors.white,
// //                             fontWeight: FontWeight.bold),
// //                       )),
// //                 ],
// //               ),
// //             ),
// //             GestureDetector(
// //               onTap: () {
// //                 catTotalList.clear();
// //                 setState(() {
// //                   catTotalList.addAll(sampleWomenList);
// //                 });
// //               },
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Container(
// //                     margin:
// //                         EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
// //                     alignment: Alignment.center,
// //                     height: 140,
// //                     width: 140,
// //                     decoration: BoxDecoration(
// //                       boxShadow: <BoxShadow>[
// //                         BoxShadow(
// //                             color: Colors.black,
// //                             blurRadius: 15.0,
// //                             offset: Offset(0.0, 0.75))
// //                       ],
// //                       color: Colors.white,
// //                       borderRadius: BorderRadius.circular(100),
// //                       border: Border(),
// //                     ),
// //                     child: Image.asset(
// //                       "assets/schoolarc.png",
// //                     ),
// //                   ),
// //                   const Positioned(
// //                       top: 0,
// //                       bottom: 0,
// //                       right: 100,
// //                       child: Text(
// //                         "Infrastructure",
// //                         style: TextStyle(
// //                             fontSize: 23,
// //                             color: Colors.white,
// //                             fontWeight: FontWeight.bold),
// //                       )),
// //                 ],
// //               ),
// //             ),
// //             GestureDetector(
// //               onTap: () {
// //                 catTotalList.clear();
// //                 setState(() {
// //                   catTotalList.addAll(sampleKidsList);
// //                 });
// //               },
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Container(
// //                     margin:
// //                         EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
// //                     alignment: Alignment.center,
// //                     height: 140,
// //                     width: 140,
// //                     decoration: BoxDecoration(
// //                       boxShadow: <BoxShadow>[
// //                         BoxShadow(
// //                             color: Colors.black,
// //                             blurRadius: 15.0,
// //                             offset: Offset(0.0, 0.75))
// //                       ],
// //                       color: Colors.white,
// //                       borderRadius: BorderRadius.circular(100),
// //                       border: Border(),
// //                     ),
// //                     child: Image.asset(
// //                       "assets/scholarship.png",
// //                     ),
// //                   ),
// //                   Positioned(
// //                       top: 0,
// //                       bottom: 0,
// //                       right: 100,
// //                       child: Text(
// //                         "Scolarship",
// //                         style: TextStyle(
// //                             fontSize: 23,
// //                             color: Colors.white,
// //                             fontWeight: FontWeight.bold),
// //                       )),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //       Container(
// //         margin: EdgeInsets.only(top: 320),
// //         child: ListView.builder(
// //           itemBuilder: (BuildContext context, index) {
// //             return Container(
// //               child: getCard(index),
// //             );
// //           },
// //           itemCount: catTotalList.length,
// //         ),
// //       ),
// //     ]));
// //   }

// //   /*
// //     Get the card item for a list
// //    */
// //   getCard(int position) {
// //     Catogery model = catTotalList[position];
// //     return Card(
// //       child: Container(
// //         padding: EdgeInsets.all(10),
// //         height: 100,
// //         alignment: Alignment.center,
// //         child: ListTile(
// //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //           leading: Image.asset(
// //             model.image,
// //             width: 70,
// //           ),
// //           title: Text(
// //             model.title,
// //             style: TextStyle(
// //                 fontSize: 18,
// //                 color: Colors.black,
// //                 wordSpacing: 2,
// //                 fontWeight: FontWeight.bold),
// //           ),
// //           subtitle: Text(
// //             model.place,
// //             style: TextStyle(
// //                 fontSize: 18,
// //                 color: Colors.black,
// //                 wordSpacing: 2,
// //                 letterSpacing: 2),
// //           ),
// //           trailing: Icon(Icons.more_vert),
// //         ),
// //       ),
// //       margin: EdgeInsets.all(10),
// //     );
// //   }
// // }

// // /*
// // Custom model
// // i.e. for itemList
// //  */
// // class ItemVO {
// //   String _id, _name;

// //   String get id => _id;

// //   set id(String value) {
// //     _id = value;
// //   }

// //   get name => _name;

// //   set name(value) {
// //     _name = value;
// //   }

// //   ItemVO(this._id, this._name);
// // }
