import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  const TextFieldWidget(
      {super.key, required this.title, this.suffixIcon, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              focusColor: Colors.blueGrey,
              prefixIcon: Icon(prefixIcon),
              labelText: title,
              border: OutlineInputBorder(),
              suffixIcon: Icon(suffixIcon),
            ),
          ),
        ),
      ),
    );
  }
}
