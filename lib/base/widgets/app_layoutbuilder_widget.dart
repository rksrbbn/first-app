import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  final int randomDivider;

  const AppLayoutbuilderWidget({super.key, required this.randomDivider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate((constraints.constrainWidth()/randomDivider).floor(), (index)=> SizedBox(
            width: 3, height: 1,
            child: DecoratedBox(decoration: BoxDecoration(
              color: Colors.white
            )),
          ))
        ); // Ganti dengan widget yang Anda inginkan
      },
    );
  }
}