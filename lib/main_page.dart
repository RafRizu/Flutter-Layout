// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_kelompok/carausel.dart';
import 'package:flutter_kelompok/clock.dart';
import 'package:flutter_kelompok/gridcat.dart';

import 'app_bar.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List<Icon> catIcon
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    List catNames = [
      'News',
      'Fixtures',
      'Squad',
      'Shop',
      'Stadium',
      'History',
      'Fan Zone',
      'More',
    ];

    List<Icon> catIcon = [
      Icon(
        Icons.newspaper,
        color: Colors.black,
        size: 32,
      ),
      Icon(
        Icons.calendar_today,
        color: Colors.black,
        size: 32,
      ),
      Icon(
        Icons.people_alt,
        color: Colors.black,
        size: 32,
      ),
      Icon(
        Icons.shopping_cart,
        color: Colors.black,
        size: 32,
      ),
      Icon(
        Icons.stadium,
        color: Colors.black,
        size: 32,
      ),
      Icon(
        Icons.history,
        color: Colors.black,
        size: 32,
      ),
      Icon(
        Icons.flag,
        color: Colors.black,
        size: 32,
      ),
      Icon(
        Icons.more_horiz,
        color: Colors.black,
        size: 32,
      ),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              // Background image
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(60.0, 15.0),
                    bottomRight: Radius.elliptical(60.0, 15.0)),
                child: Image.asset(
                  'assets/images/old-trafford.png',
                  width: screenWidth,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          child: Image.asset(
                            'assets/images/bg.png',
                            width: screenWidth * 0.95,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0, vertical: 17.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 37.0, vertical: 8.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 134, 9, 9),
                                              Color.fromARGB(255, 0, 0, 0)
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child: Text(
                                          'Jan 28, 11:30 PM WIB',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: ClockWidget(),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/logo.png',
                                        height: 80,
                                        width: 80,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Text(
                                          'VS',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/images/logo2.png',
                                        height: 80,
                                        width: 80,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 27.0, vertical: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.book_online,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Get your ticket',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Text(
                  'Welcome, Mohammad Rafi`',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              GridView.builder(
                itemCount: catNames.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1 / 1,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 3.0,
                              style: BorderStyle.solid,
                              color: Colors.red),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.grey.withOpacity(0.3), //color of shadow
                              spreadRadius: 0, //spread radius
                              blurRadius: 0, // blur radius
                              offset: Offset(5, 6), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                            //you can set more BoxShadow() here
                          ],
                        ),
                        child: Center(
                          child: catIcon[index],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        catNames[index],
                        style: TextStyle(color: Colors.black),
                      ),
                      // SizedBox(height: 30,),
                      // CarouselDek(),
                    ],
                  );
                },
              ),
              SizedBox(height: 30,),
              CarouselDek(),
              SizedBox(height: 50,),
            ],
          ),
        ],
      ),
    );
  }
}
