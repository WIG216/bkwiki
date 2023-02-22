import 'package:bkwiki/consts/colors.dart';
import 'package:bkwiki/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final formKey = GlobalKey<FormState>(); //key for form
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 300,
                child: Image.asset("assets/images/register.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Register to continue",
                style: TextStyle(
                  fontSize: 30,
                  color: lightHeaderColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        height: height * 0.02,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Enter your email",
                        ),
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
                      SizedBox(
                        height: height * 0.02,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Enter your password",
                        ),
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
                      SizedBox(
                        height: height * 0.02,
                      ),
                      RichText(
                        text: TextSpan(
                            text:
                                "By clicking on the register button you accept our ",
                            style: TextStyle(
                              color: lightTextColor,
                            ),
                            children: const[
                               TextSpan(
                                text: "Terms and Conditions",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ]),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 70,
                          ),
                          const Text(
                            "Already have an account ?",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(RouteClass.login);
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: lightHeaderColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(RouteClass.home);
                          },
                          child: const Text("Register"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
