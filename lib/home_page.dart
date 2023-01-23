import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learningkarousel/models/carousel.dart';
import 'package:learningkarousel/models/carousel_design.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> openInBrowser(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ГОРИЗОНТАЛЬНЫЙ СКРОЛЛ',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        elevation: 1,
        backgroundColor: Colors.grey.shade300,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Соц сети + задания'),
              ListView.builder(
                itemCount: carouselList.length,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => CarouselDesign(
                      carousel: carouselList[index],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
