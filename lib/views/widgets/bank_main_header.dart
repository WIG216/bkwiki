import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BankHeader extends StatelessWidget {
  const BankHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width - 90,
        height: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal.withOpacity(0.8),
              Colors.teal.shade200.withOpacity(0.8),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.centerRight,
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(10, 10),
              blurRadius: 20,
              color: Colors.teal.withOpacity(0.2),
            )
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(80),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            top: 25,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "New workout",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Legs to night",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "and Glutes Workout",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.timer,
                        size: 20,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "60 min",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(4, 8),
                        )
                      ],
                    ),
                    child: const Icon(
                      Icons.play_circle_fill,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
