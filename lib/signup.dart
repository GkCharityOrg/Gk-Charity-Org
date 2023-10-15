import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gk_educational_charity_org/admin.dart';

import 'homePage.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool showProgress = false;
  bool visible = false;

  final _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  bool _isObscure = true;
  bool _isObscure2 = true;
  File? file;
  var options = [
    'User',
    'Admin',
  ];
  var _currentItemSelected = "User";
  var rool = "User";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formkey,
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Register Here',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                // Container(
                //     alignment: Alignment.center,
                //     padding: const EdgeInsets.all(10),
                //     child: const Text(
                //       'Signup Here',
                //       style: TextStyle(fontSize: 20),
                //     )),
                Container(
                  height: 250,
                  width: 250,
                  child: Image.asset("assets/login2.png"),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: mobileController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile Number',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: repasswordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Retype Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5C6373),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Select Type : ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      DropdownButton<String>(
                        dropdownColor: Color(0xFFF5C6373),
                        isDense: true,
                        isExpanded: false,
                        iconEnabledColor: Colors.white,
                        focusColor: Colors.red.shade900,
                        items: options.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Container(
                              alignment: Alignment.center,
                              width: 200,
                              height: 100,
                              child: Text(
                                dropDownStringItem,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (newValueSelected) {
                          setState(() {
                            _currentItemSelected = newValueSelected!;
                            rool = newValueSelected;
                          });
                        },
                        value: _currentItemSelected,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // TextButton(
                //   onPressed: () {},
                //   child: const Text(
                //     'Forgot Password',
                //   ),
                // ),
                Container(
                    height: 60,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Sign Up'),
                      onPressed: () {
                        setState(() {
                          showProgress = true;
                        });
                        signUp(emailController.text, passwordController.text,
                            rool);

                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Row(
                  children: <Widget>[
                    const Text('If already have an acount?'),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AdminLogin()),
                        );
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password, String rool) async {
    const CircularProgressIndicator();
    if (_formkey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore(email, rool)})
          .catchError((e) {});
    }
  }

  postDetailsToFirestore(String email, String rool) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var user = _auth.currentUser;
    CollectionReference ref = FirebaseFirestore.instance.collection('users');
    ref.doc(user!.uid).set({'email': emailController.text, 'rool': rool});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => AdminLogin()));
  }
}
