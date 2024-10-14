import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  final List<String> imgPath = [
    'images/img1.jpg',
    'images/img2.jpg',
    'images/img3.jpg',
  ];
  int currentIndex = 0;

  CarouselSliderController carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            items: imgPath
                .map(
                  (item) => Center(
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                )
                .toList(),
            options: CarouselOptions(
              height: 400.0,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
              pauseAutoPlayOnTouch: true,
            ),
            carouselController: carouselController,
          ),
          const SizedBox(
              height: 16), // Added space between carousel and indicator
          AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: imgPath.length,
            effect: const WormEffect(),
          ),
        ],
      ),
    );
  }
}
