import 'dart:async';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> imgPath = [
    'assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg'
  ];

  List<String> largeImgPath = [];
  Timer? timer;
  int pageIndex = 0;
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.90);

  @override
  void initState() {
    super.initState();

    // Create a larger list by repeating the original list 100 times
    largeImgPath = List.generate(
        imgPath.length * 100, (index) => imgPath[index % imgPath.length]);

    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      pageIndex++;
      pageController.animateToPage(
        pageIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: SizedBox(
              height: 200,
              child: PageView.builder(
                onPageChanged: (value) {
                  pageIndex = value;
                  setState(() {});
                },
                controller: pageController,
                itemCount: largeImgPath.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onPanDown: (details) {
                      timer?.cancel();
                    },
                    onPanEnd: (details) {
                      timer =
                          Timer.periodic(const Duration(seconds: 3), (timer) {
                        pageIndex++;
                        pageController.animateToPage(
                          pageIndex,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: const EdgeInsets.all(14),
                      child: Image.asset(
                        largeImgPath[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              imgPath.length,
              (index) => Container(
                margin: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.circle,
                  color: pageIndex % imgPath.length == index
                      ? Colors.amber
                      : Colors.grey,
                  size: 20.0,
                ),
              ),
            ).toList(),
          ),
        ],
      ),
    );
  }
}
