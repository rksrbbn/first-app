import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        Text(bigText, style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w500
        )
        ),
        InkWell(
          onTap: () {
            
          },
          child: Text(smallText, style: 
            TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
            )
          ),
        )
        

      ],
    );
  }
}