import 'package:bkwiki/consts/colors.dart';
import 'package:bkwiki/views/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ComparismPage extends StatefulWidget {
  const ComparismPage({super.key});

  @override
  State<ComparismPage> createState() => _ComparismPageState();
}

class _ComparismPageState extends State<ComparismPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightPrimaryColor,
        title: const Text(
          'Comparism',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.symmetric(
                inside: BorderSide(
                  width: .8,
                  color: Colors.grey,
                ),
              ),
              columnWidths: const <int, TableColumnWidth>{
                0: FlexColumnWidth(),
                1: FlexColumnWidth(),
                2: FlexColumnWidth(),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 32,
                      // color: Colors.green,
                    ),
                    TableCell(
                      child: Container(
                        alignment: Alignment.center,
                        height: 32,
                        child: Text(
                          "Ecobank",
                        ),
                      ),
                    ),
                    Container(
                      height: 64,
                      alignment: Alignment.center,
                      child: Text(
                        "UBA",
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      // color: Colors.green,
                      child: Text(
                        "Saving Account",
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "A savings account is an interest-earning deposit account held at a bank.  This type of account usually pays, ",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "A savings account is an interest-earning deposit account held at a bank.  This type of account usually pays, ",
                      ),
                    ),
                  ],
                ),
                TableRow(
                  // decoration: const BoxDecoration(
                  //   color: Colors.grey,
                  // ),
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Deposite Account",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "A savings account is an interest-earning deposit account held at a bank.  This type of account usually pays, ",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "A savings account is an interest-earning deposit account held at a bank.  This type of account usually pays, ",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
