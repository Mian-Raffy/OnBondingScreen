import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider/homeScreen.dart';
import 'package:slider/utilz/page_notifier.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 210, 250, 246),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color.fromARGB(255, 210, 250, 246),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: width < 500 ? height * .01 : 0),
              child: Image.asset(
                height: height * .40,
                'assets/images/skype2.png',
              ),
            ),
          ),
          SizedBox(height: height * .05),
          Text(
            'Get notified when\nwork happens',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: width < 500 ? width * .07 : height * .04,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: height * .02),
          Text(
            'Take control of notifications,\ncollaborate live or on your own time',
            style:
                TextStyle(fontSize: width < 500 ? height * .02 : height * .02),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: height * .05),
          Consumer<PageNotifier>(
            builder: (context, notifier, child) {
              return Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(3, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: width * .01,
                      ),
                      child: index == notifier.currentPage
                          ? Container(
                              height: 9,
                              width: 17,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          : Icon(
                              Icons.circle,
                              color: Colors.black,
                              size: 12,
                            ),
                    );
                  }),
                ),
              );
            },
          ),
          SizedBox(height: height * .04),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Homescreen();
                },
              ));
            },
            child: Container(
              width: height * .23,
              height: width < 500 ? height * .06 : height * .08,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontSize: width < 500 ? width * .04 : height * .04,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
