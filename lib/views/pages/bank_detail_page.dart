import 'package:bkwiki/consts/colors.dart';
import 'package:bkwiki/views/widgets/appbar.dart';
import 'package:bkwiki/views/widgets/card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:page_transition/page_transition.dart';

class BankPage extends StatelessWidget {
  const BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: Color.fromRGBO(229, 231, 232, 1),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/uba_header.png",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 290,
              ),
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                color: Color.fromRGBO(252, 251, 251, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
              ),
              child: Container(
                margin: EdgeInsets.only(
                  top: 300,
                ),
                child: Column(
                  children: [
                    Text(
                      "United Bank for Africa",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Text(
                          "Areas Served: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Africa, Europe, United States, Asia",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Container(
                          // height: 50,
                          // width: 50,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: lightCardColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Financial services company",
                                style: TextStyle(
                                  color: lightPrimaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Sector",
                                style: TextStyle(
                                  height: 2,
                                ),
                              )
                            ],
                          ),
                        ),
                        // Container(
                        //   // height: 50,
                        //   // width: 50,
                        //   padding: EdgeInsets.all(8),
                        //   decoration: BoxDecoration(
                        //     color: lightCardColor,
                        //     borderRadius: BorderRadius.circular(16),
                        //   ),
                        //   child: Column(
                        //     children: [
                        //       Text(
                        //         "20,000+",
                        //         style: TextStyle(
                        //           color: lightPrimaryColor,
                        //           fontSize: 16,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //       ),
                        //       Text(
                        //         "Number of Employees",
                        //         style: TextStyle(
                        //           height: 2,
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          // height: 50,
                          // width: 50,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: lightCardColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Oliver Alawuba",
                                style: TextStyle(
                                  color: lightPrimaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "CEO",
                                style: TextStyle(
                                  height: 2,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    // Text(
                    //   "Description",
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.w500,
                    //     fontSize: 16,
                    //   ),
                    // ),
                    Text(
                      "United Bank for Africa Plc is a Multinational pan-African financial services group headquartered in Lagos and known as Africa’s Global Bank. It has subsidiaries in 20 African countries and offices in London, Paris and New York. In December 2021, UBA received its banking license to commence operations in the UAE.",
                      style: TextStyle(
                        height: 1.8,
                        color: Color.fromRGBO(187, 187, 187, 1),
                      ),
                    ),
                    Text(
                      "Requirements to open a UBA bank account",
                      style: TextStyle(
                        height: 1.8,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      // padding: EdgeInsets.only(
                      //   left: 16,
                      // ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Completed Account Opening Form.",
                            style: TextStyle(
                              height: 1.8,
                              color: Color.fromRGBO(187, 187, 187, 1),
                            ),
                          ),
                          Text(
                            "2 passport photographs.",
                            style: TextStyle(
                              height: 1.8,
                              color: Color.fromRGBO(187, 187, 187, 1),
                            ),
                          ),
                          Text(
                            "Valid means of identification; national ID, international passport, recent voter card, driver's license.",
                            style: TextStyle(
                              height: 1.8,
                              color: Color.fromRGBO(187, 187, 187, 1),
                            ),
                          ),
                          Text(
                            "Utility bill not exceeding 3 months old.",
                            style: TextStyle(
                              height: 1.8,
                              color: Color.fromRGBO(187, 187, 187, 1),
                            ),
                          ),
                          Text(
                            "2 current account references.",
                            style: TextStyle(
                              height: 1.8,
                              color: Color.fromRGBO(187, 187, 187, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 8,
              ),
              margin: EdgeInsets.only(
                top: 270,
                left: MediaQuery.of(context).size.width - 100,
              ),
              decoration: BoxDecoration(
                color: lightCardColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/uba.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
