import 'dart:convert';

import 'package:bkwiki/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  List info = [];

  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("assets/service.json")
        .then((value) {
      setState(() {
        info = json.decode(value);
      });
      // print(info);
    });
  }

  // final String routName;
  @override
  void initState() {
    super.initState();
    _initData();
  }

  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(RouteClass.bank);
          },
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 100,
            margin: const EdgeInsets.only(left: 25, bottom: 15),
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  offset: Offset(5, 5),
                  color: Colors.grey.shade300,
                ),
              ],
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/images/savings.png",
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "title",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
