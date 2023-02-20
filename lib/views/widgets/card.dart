import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            
          },
          child: Container(
            width: (MediaQuery.of(context).size.width - 95) / 3,
            height: 150,
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/register.png",
                ),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  offset: Offset(5, 5),
                  color: Color(0xFFD0E8F2),
                ),
              ],
            ),
            child: Center(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "title",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
