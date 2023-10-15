import 'package:flutter/material.dart';
import 'package:gk_educational_charity_org/admin.dart';
import 'package:gk_educational_charity_org/login.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('GK Educational Institutions'),
      // ),
      body: Stack(
        children: [
          Image.asset(
            "assets/landing_bg.png",
            fit: BoxFit.cover,
            width: 400,
            height: 900,
          ),
          Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color.fromARGB(113, 94, 14, 50),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(50),
            ),
            height: 200,
            width: 600,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              color: Colors.transparent,
              shadowColor: Colors.white38,
              child: const Center(
                child: Text(
                  "        GK \n CHARITABLE \n     TRUST",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "CentraleSansRegular",
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 220,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 330,
                  height: 60,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 168, 7, 128),
                        Color.fromARGB(111, 58, 48, 55),
                      ],
                    ),
                  ),
                  child: TextButton(
                    child: const Text(
                      'Admin',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "CentraleSansRegular",
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminLogin()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 330,
                  height: 60,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(111, 58, 48, 55),
                        Color.fromARGB(255, 168, 7, 128)
                      ],
                    ),
                  ),
                  child: MaterialButton(
                    child: const Text(
                      'User',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "CentraleSansRegular",
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserLogin()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
