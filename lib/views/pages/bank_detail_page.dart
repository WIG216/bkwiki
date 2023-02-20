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
      body: Expanded(
                  child: SingleChildScrollView(
                    child: Column(children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: Swiper(
                          itemCount: 3,
                          itemBuilder: (ctx, index) {
                            return const CardWidget();
                          },
                          autoplay: true,
                          pagination: const SwiperPagination(
                              alignment: Alignment.bottomCenter,
                              builder: DotSwiperPaginationBuilder(
                                  color: Colors.white,
                                  activeColor: Colors.red)),
                          // control: const SwiperControl(),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Row(
                      //     children: [
                      //       const Text(
                      //         "View more",
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.w600,
                      //           fontSize: 18,
                      //         ),
                      //       ),
                      //       const Spacer(),
                      //       AppBarIcons(
                      //         function: () {
                      //           Navigator.push(
                      //             context,
                      //             PageTransition(
                      //               type: PageTransitionType.fade,
                      //               child: const CardWidget(),
                      //             ),
                      //           );
                      //         },
                      //         icon: i.arrowRight2,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 0.0,
                                    mainAxisSpacing: 0.0,
                                    childAspectRatio: 0.7),
                            itemBuilder: (ctx, index) {
                              return SafeArea(child: const CardWidget());
                            }),
                      )
                    ]),
                  ),
                )
              
    );
  }
}
