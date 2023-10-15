import 'package:flutter/material.dart';

class Heart extends StatelessWidget {
  const Heart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              const Positioned(
                child: Image(
                  alignment: Alignment.topCenter,
                  image: AssetImage("assets/GK-Sir-CMD-ACE-Engg-Academy.png"),
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 60,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Causes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: "CentraleSansRegular",
                        )),
                    Text("Total Donations",
                        style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 32,
                            fontFamily: "CentraleSansRegular",
                            fontWeight: FontWeight.w100)),
                  ],
                ),
              ),
              Positioned(
                bottom: 170,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const <Widget>[
                            Text(
                              "\Rs 20,000",
                              style: TextStyle(
                                  color: Color(0xff3cabff),
                                  fontSize: 35,
                                  fontFamily: 'CentraleSansRegular',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "ROUND-UPS",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'CentraleSansRegular',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const <Widget>[
                            Text(
                              "\Rs 10,000",
                              style: TextStyle(
                                  color: Color(0xff3cabff),
                                  fontSize: 35,
                                  fontFamily: 'CentraleSansRegular',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "ONE TIME",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'CentraleSansRegular',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 50, left: 10, right: 10),
                      width: 380,
                      height: 80,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xff471a91), Color(0xff3cabff)],
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          Text(
                            "THIS MONTH",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'CentraleSansRegular'),
                          ),
                          Text(
                            "\Rs 10,000",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'CentraleSansRegular'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
