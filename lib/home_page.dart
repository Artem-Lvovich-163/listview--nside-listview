import 'package:flutter/material.dart';
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
  //
  List<Carousel> carouselList = [
    Carousel(
      image: 'assets/images/vk.png',
      path: 'https://vk.com/artemlvovich1',
    ),
    Carousel(
      image: 'assets/images/you_tube.png',
      path: 'https://www.youtube.com/channel/UCO34M0CblpX_wJZPsINzr_w',
    ),
    Carousel(
        image: 'assets/images/word.png',
        path:
            'https://docs.google.com/document/d/1VcP9aXr2No8vlDlsQ0s0gfJsY2Kr02fS_qL2kOrxdCM/edit?usp=share_link'),
    Carousel(
        image: 'assets/images/exel.png',
        path:
            'https://docs.google.com/spreadsheets/d/1MFn3YZPUSaGCPgLIbL6WMwy8hZw7f172/edit?usp=share_link&ouid=103514039146600279069&rtpof=true&sd=true'),
  ];

  Future<void> openInBrowser(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      body: Container(
        width: size.width,
        height: size.height,
        alignment: Alignment
            .center, // те виджеты,которые скролятся, долхны иметь заданнный размер,
        // в направлении куда скролятся,
        child: ListView(
          children: [
            const Text('Соц сети + задания'),
            SizedBox(
              height: size.height * 0.2,
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.5,
              child: ListView.builder(
                itemCount: carouselList.length,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => CarouselDesign(
                      carousel: carouselList[index],
                      press: () =>
                          openInBrowser(carouselList.elementAt(index).path),
                    )),
              ),
            ),
            SizedBox(
              height: size.height,
            ),
          ],
        ),
      ),
    );
  }
}
