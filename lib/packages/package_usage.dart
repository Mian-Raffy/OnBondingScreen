import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider/packages/slider_controller.dart';
import '../homeScreen.dart';

class PackageUsage extends StatefulWidget {
  const PackageUsage({super.key});

  @override
  State<PackageUsage> createState() => _PackageUsageState();
}

class _PackageUsageState extends State<PackageUsage> {
  CarouselSliderController carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    print('tap');
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final sliderController = Provider.of<SliderController>(context);
    List<Widget> carouselItem = carsolItem(sliderController, width, height);

    return Scaffold(
      backgroundColor: sliderController
          .screenData[
              sliderController.pageIndex % sliderController.screenData.length]
          .color,
      body: Consumer(builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            CarouselSlider(
              carouselController: carouselController,
              items: carouselItem,
              options: CarouselOptions(
                enableInfiniteScroll: true,
                initialPage: sliderController.screenData.length,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  sliderController.setPage(index);
                },
                height: height * .45,
                autoPlay: false,
              ),
            ),
            Center(
              child: GestureDetector(
                onHorizontalDragUpdate: (details) {
                  if (details.delta.dx > 0) {
                    carouselController.nextPage();
                  } else if (details.delta.dx < 0) {
                    carouselController.previousPage();
                  }
                },
                child: Container(
                  width: width,
                  height: height * .27,
                  padding: EdgeInsets.symmetric(
                      horizontal: width < 500 ? width * .15 : width * .02),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: width < 500 ? 0 : height * .05),
                    child: Column(
                      children: [
                        Text(
                          sliderController
                              .screenData[sliderController.pageIndex %
                                  sliderController.screenData.length]
                              .text,
                          maxLines: width > 500 ? 1 : 2,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  width < 500 ? height * .039 : height * .036),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: height * .02),
                        Text(
                          sliderController
                              .screenData[sliderController.pageIndex %
                                  sliderController.screenData.length]
                              .text2,
                          maxLines: width > 500
                              ? 1
                              : 3, // 2 lines on mobile, 1 line on web
                          softWrap: true,
                          style: TextStyle(
                              fontSize:
                                  width < 500 ? height * .02 : height * .019),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                sliderController.screenData.length,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: sliderController.pageIndex %
                              sliderController.screenData.length ==
                          index
                      ? Container(
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          height: 9,
                          width: 17,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                        )
                      : Container(
                          height: 9,
                          width: 17,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                ),
              ),
            ),
            SizedBox(height: height * .10),
            sliderController.pageIndex % 3 == 2
                ? GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Homescreen();
                        },
                      ));
                    },
                    child: Container(
                      width: height * .27,
                      height: width < 500 ? height * .07 : height * .07,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          'START',
                          style: TextStyle(
                            fontSize: width < 500 ? width * .04 : height * .02,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          carouselController.previousPage();
                        },
                        child: const Text(
                          'SKIP',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          carouselController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          width: height * .12,
                          height: width < 500 ? height * .07 : height * .07,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'NEXT',
                              style: TextStyle(
                                fontSize:
                                    width < 500 ? width * .04 : height * .02,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
          ],
        );
      }),
    );
  }

  List<Widget> carsolItem(sliderController, double width, double height) {
    List<Widget> carouselItem = List.generate(
      sliderController.screenData.length,
      (index) {
        final item = sliderController.screenData[index];
        return Padding(
          padding: EdgeInsets.only(
            top: width < 500 ? height * .10 : height * .08,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Image.asset(
                item.image,
                height: height < 500 ? height * .40 : height * .45,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
    return carouselItem;
  }
}
