import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider/utilz/page_notifier.dart';
import 'package:slider/screens/screen_three.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async {
        final notifier = context.read<PageNotifier>();
        if (notifier.currentPage > 0) {
          notifier.backPage(notifier.currentPage);
          Navigator.pop(context);
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 231, 238),
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Color.fromARGB(255, 255, 231, 238),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: width < 500 ? height * .01 : 0),
                child: Image.asset(
                  height: height * .40,
                  'assets/images/skype1.png',
                ),
              ),
            ),
            SizedBox(height: height * .05),
            Text(
              'Stay Organized\n with team',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: width < 500 ? height * .04 : height * .04,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * .02),
            Text(
              'But understanding the contributions\nour colleagues make to our teams\nand companies',
              style: TextStyle(
                  fontSize: width < 500 ? height * .02 : height * .02),
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
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * .08, vertical: height * .03),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      final notifier = context.read<PageNotifier>();
                      if (notifier.currentPage > 0) {
                        notifier.backPage(notifier.currentPage);
                        Navigator.pop(context);
                      }
                    },
                    child: Text(
                      'SKIP',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<PageNotifier>()
                          .setPage(2); // Update page state
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ScreenThree();
                        },
                      ));
                    },
                    child: Container(
                      width: height * .23,
                      height: width < 500 ? height * .06 : height * .08,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          'Next',
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
            )
          ],
        ),
      ),
    );
  }
}
