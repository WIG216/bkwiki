import 'dart:convert';

import 'package:bkwiki/consts/colors.dart';
import 'package:bkwiki/views/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key});

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
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

  @override
  void initState() {
    super.initState();
    _initData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: lightPrimaryColor,
          title: const Text(
            'Mobile Application',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          leading: AppBarIcons(
            function: () {
              Get.back();
            },
            icon: Icons.arrow_back_ios_outlined,
          ),
        ),
        body: ListView.builder(
          itemCount: info.length,
          padding: EdgeInsets.only(
            top: 20,
            left: 20,
            bottom: 20,
          ),
          itemBuilder: (context, index) {
            return Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 100,
                    padding: const EdgeInsets.only(
                      left: 20,
                      bottom: 5,
                    ),
                    margin: EdgeInsets.only(
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      color: lightCardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          info[index]['img'],
                          height: 70,
                          width: 70,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          info[index]['title'],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
