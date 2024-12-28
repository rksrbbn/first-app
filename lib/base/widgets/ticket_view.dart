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
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 67, 75, 143),
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
                            Center(child: Transform.rotate(angle: 1.57, child: Icon(Icons.local_airport_rounded,color: Colors.white)))
                          ]
                          )
                        ),
                      BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "JKT",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                        
                      )
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "New York",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                        
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                        
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Jakarta",
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
            Container(
              color: Colors.deepOrangeAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))
                    )),
                  ),
                  Expanded(child: AppLayoutbuilderWidget(randomDivider: 10)),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))
                    )),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(21), bottomLeft: Radius.circular(21))

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "1 JAN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                        
                      ),
                      Expanded(child: Container()),
                        Text(
                        "09:00 AM",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                        
                      ),
                      Expanded(child: Container()),
                      Text(
                        "21",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                        
                      )
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "Date",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                        
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Departure Time",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                        
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Seat",
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
          ],
        ),
      )
      
    );
  }
}