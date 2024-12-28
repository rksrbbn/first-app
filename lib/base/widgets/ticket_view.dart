import 'package:first_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:first_app/base/widgets/big_dot.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 179,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 59, 70, 165),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))

        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "NYC",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                  
                ),
                Expanded(child: Container()),
                BigDot(),
                Expanded(
                  child: 
                  Stack(
                    children: [
                      SizedBox(
                        height: 24,
                        child: AppLayoutbuilderWidget(randomDivider: 6),
                      ),
                      Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded,color: Colors.white)))
                    ]
                    )
                  ),
                BigDot(),
                Expanded(child: Container()),
                Text(
                  "NYC",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                  
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}