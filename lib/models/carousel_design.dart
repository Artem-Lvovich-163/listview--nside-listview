// ignore_for_file: avoid_unnecessary_containers

import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:learningkarousel/models/carousel.dart';

class CarouselDesign extends StatelessWidget {
  final Carousel carousel;
  final Function()? press;

  const CarouselDesign({
    Key? key,
    required this.carousel,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,
      child: Container(
        width: size.width * 0.5,
        color: Colors.purple,
        margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
        ),
        alignment: Alignment.center,
        child: Image.asset(carousel.image),
      ),
    );
  }
}
