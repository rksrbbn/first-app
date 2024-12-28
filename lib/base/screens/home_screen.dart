import 'package:first_app/base/widgets/app_double_text.dart';
import 'package:first_app/base/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 40,),
          Container( 
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: 
              Column (
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Book Tickets", 
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF3b3b3b)
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/plane_logo.webp')
                      )
                    ),
                  )
                ],
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: 
                  Row(
                  children: [
                    Icon(Icons.search_outlined, color: Colors.orangeAccent),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 40),
              AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all'),
              SizedBox(height: 40),
              TicketView(),
              SizedBox(height: 40),
              AppDoubleText(bigText: 'Hotels', smallText: 'View all'),
              ],
            )
          )
        ],
      ),
    );
  }
}