import 'dart:math';

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
  final DataTableSource _data = MyData();
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
      body: Column(children: [
        PaginatedDataTable(
          source: _data,
          columns: [
            DataColumn(label: Text("UBA")),
            DataColumn(label: Text("ECOBANK")),
            DataColumn(label: Text("Price")),
          ],
          header: Center(
            child: Text("Difference in banks"),
          ),
          columnSpacing: 100,
          horizontalMargin: 60,
        ),
      ]),
    );
  }
}

class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      15,
      (index) => {
            "UBA": "Account type",
            "ECOBANK": "Account type",
            "Price": Random().nextInt(50000)
          });
  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['UBA'])),
      DataCell(Text(_data[index]['ECOBANK'])),
      DataCell(Text(_data[index]['Price'].toString())),
    ]);
    throw UnimplementedError();
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
