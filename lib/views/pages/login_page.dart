import 'package:bkwiki/consts/colors.dart';
import 'package:bkwiki/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final formKey = GlobalKey<FormState>(); //key for form

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/login.png",
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login to Continue",
                          style:
                              TextStyle(fontSize: 30, color: lightHeaderColor),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            labelText: "Enter your name",
                          ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                RegExp(r'^[a-z A-Z]').hasMatch(value!)) {
                              return "Enter correct name";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration:
                              InputDecoration(labelText: "Enter your password"),
                          validator: (value) {
                            if (value!.isEmpty ||
                                RegExp(r'^[+]*[(]{0,1}{0-9}[+$')
                                    .hasMatch(value!)) {
                              return "Enter correct phone number";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        height: 70,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account ?",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                              // onEnter: ,
                              text: " Create an account",
                              style: TextStyle(
                                color: lightHeaderColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    // color: lightPrimaryColor,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Get.toNamed(RouteClass.home);
                      },
                      icon: Icon(Icons.app_registration, size: 18),
                      label: Text("Login"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
