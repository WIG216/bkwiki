import 'dart:convert';

import 'package:bkwiki/consts/colors.dart';
import 'package:bkwiki/routes/routes.dart';
import 'package:bkwiki/views/widgets/appbar.dart';
import 'package:bkwiki/views/widgets/banner.dart';
import 'package:bkwiki/views/widgets/card.dart';
import 'package:bkwiki/views/widgets/list_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];
  List services = [];

  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("assets/banks.json")
        .then((value) {
      setState(() {
        info = json.decode(value);
      });
      // print(info);
    });
  }

  _serviceData() {
    DefaultAssetBundle.of(context)
        .loadString("assets/services.json")
        .then((value) {
      setState(() {
        services = json.decode(value);
      });
      // print(info);
    });
  }

  // final String routName;
  @override
  void initState() {
    super.initState();
    _initData();
    _serviceData();
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'BKwiki',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          leading: AppBarIcons(
            function: () {
              Get.back();
            },
            icon: Icons.menu,
          ),
          actions: [
            AppBarIcons(
              function: () {},
              icon: Icons.notifications_none_outlined,
            ),
          ],
          automaticallyImplyLeading: false,
          backgroundColor: lightPrimaryColor,
          bottom: TabBar(
            indicatorColor: lightBackgroundColor,
            tabs: const [
              Tab(text: 'Home', icon: Icon(Icons.home_outlined)),
              Tab(text: 'Banks', icon: Icon(Icons.money)),
              Tab(text: 'Services', icon: Icon(Icons.add_circle_outline)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      width: MediaQuery.of(context).size.width - 50,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.shade300,
                            Colors.white24.withOpacity(0.8),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(10, 10),
                            blurRadius: 20,
                            color: lightPrimaryColor.withOpacity(0.2),
                          )
                        ],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(80),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 25,
                          right: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Need more information ?",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(52, 92, 117, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Let's make it ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color.fromRGBO(52, 92, 117, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "easier for you",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color.fromRGBO(52, 92, 117, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.timer,
                                      size: 20,
                                      color: Colors.blueGrey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "10 min",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(52, 92, 117, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade400,
                                        blurRadius: 10,
                                        offset: const Offset(4, 6),
                                      )
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.play_circle_fill,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 30,
                      right: 30,
                    ),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "View more",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: lightTextColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: lightTextColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: info.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 150.0,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(RouteClass.bank);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(
                                      255, 255, 255, 0.634),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: lightTextColor.withOpacity(.08),
                                  )),
                              margin: const EdgeInsets.all(8),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      info[index]['img'],
                                      height: 50.0,
                                      width: 50,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      info[index]['title'],
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: lightTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 90,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: ListView.builder(
                        itemCount: info.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 0.09,
                                  color: lightPrimaryColor,
                                ),
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(RouteClass.bank);
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 0,
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: Image.asset(
                                        info[index]['img'],
                                        height: 40.0,
                                        width: 40,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.65,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          info[index]['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          color: lightPrimaryColor,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height,
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          padding: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          decoration: BoxDecoration(
                            color: lightScaffoldColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: GridView.builder(
                                  itemCount: services.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: 150.0,
                                    crossAxisSpacing: 10.0,
                                  ),
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          if (index == 0) {
                                            Get.toNamed(RouteClass.branch);
                                          } else if (index == 1) {
                                            Get.toNamed(RouteClass.atmlocator);
                                          } else if (index == 2) {
                                            Get.toNamed(RouteClass.mobile);
                                          } else if (index == 3) {
                                            Get.toNamed(RouteClass.multicanal);
                                          } else if (index == 4) {
                                            Get.toNamed(RouteClass.account);
                                          } else if (index == 5) {
                                            Get.toNamed(RouteClass.loan);
                                          }
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  services[index]['img'],
                                                  height: 70,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  services[index]['title'],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
