import 'dart:convert';

import 'package:bkwiki/consts/colors.dart';
import 'package:bkwiki/routes/routes.dart';
import 'package:bkwiki/views/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class LoanPage extends StatefulWidget {
  const LoanPage({super.key});

  @override
  State<LoanPage> createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> {
  List info = [];
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
          'Accounts',
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
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
                            Checkbox(
                              value: info[index]["isChecked"],
                              onChanged: (newValue) {
                                setState(() {
                                  info[index]["isChecked"] = newValue;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
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
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteClass.compare);
            },
            child: Container(
              padding: EdgeInsets.all(8),
              child: Text("Compare"),
            ),
          ),
        ],
      ),
    );
  }
}