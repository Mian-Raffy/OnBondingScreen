import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider/utilz/page_notifier.dart';
import 'package:slider/screens/screen_Two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 208, 208),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  top: width < 500 ? height * .12 : height * .04),
              child: Image.asset(
                height: height * .40,
                'assets/images/skype3.png',
              ),
            ),
          ),
          SizedBox(height: height * .05),
          Text(
            'Track Your Work\n and get the result',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: width < 500 ? height * .04 : height * .04,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: height * .02),
          Text(
            'Remember to keep track of your\n professional accomplishments.',
            style:
                TextStyle(fontSize: width < 500 ? height * .02 : height * .02),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: width < 500 ? height * .05 : height * .04),
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
                Text(
                  'SKIP',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    context
                        .read<PageNotifier>()
                        .setPage(1); // Update page state
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ScreenTwo();
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
    );
  }
}
