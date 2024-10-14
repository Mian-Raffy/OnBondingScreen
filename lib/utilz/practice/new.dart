
// // //         if (height < 500)
// // //                     Column(children: [
// // //                       Text(
// // //                         screenData[pageIndex % screenData.length].text,
// // //                         style: TextStyle(
// // //                           fontWeight: FontWeight.w500,
// // //                           fontSize: width < 500 ? height * .04 : height * .04,
// // //                         ),
// // //                         textAlign: TextAlign.center,
// // //                       ),
// // //                       SizedBox(
// // //                         height: height * .02,
// // //                       ),
// // //                       Text(
// // //                         screenData[pageIndex % screenData.length].text2,
// // //                         style: TextStyle(
// // //                             fontSize:
// // //                                 width < 500 ? height * .02 : height * .02),
// // //                         textAlign: TextAlign.center,
// // //                       ),
// // //                     ])
// // //                   else
// // //                     Column(children: [
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Text(
// // //                             screenData[pageIndex % screenData.length].text,
// // //                             style: TextStyle(
// // //                               fontWeight: FontWeight.w500,
// // //                               fontSize:
// // //                                   width < 500 ? height * .04 : height * .04,
// // //                             ),
// // //                             textAlign: TextAlign.center,
// // //                           ),
// // //                           Text(
// // //                             screenData[pageIndex % screenData.length].Text,
// // //                             style: TextStyle(
// // //                               fontWeight: FontWeight.w500,
// // //                               fontSize:
// // //                                   width < 500 ? height * .04 : height * .04,
// // //                             ),
// // //                             // style: TextStyle(
// // //                             //     fontSize:
// // //                             //         width < 500 ? height * .02 : height * .02),
// // //                             textAlign: TextAlign.center,
// // //                           )
// // //                         ],
// // //                       ),
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Text(
// // //                             screenData[pageIndex % screenData.length].text2,
// // //                             // style: TextStyle(
// // //                             //   fontWeight: FontWeight.w500,
// // //                             //   fontSize:
// // //                             //       width < 500 ? height * .04 : height * .04,
// // //                             // ),
// // //                             textAlign: TextAlign.center,
// // //                           ),
// // //                           Text(
// // //                             screenData[pageIndex % screenData.length].Text2,
// // //                             style: TextStyle(
// // //                                 fontSize:
// // //                                     width < 500 ? height * .02 : height * .02),
// // //                             textAlign: TextAlign.center,
// // //                           ),
// // //                           // Text(
// // //                           //   screenData[pageIndex % screenData.length].Text3!,
// // //                           //   style: TextStyle(
// // //                           //       fontSize:
// // //                           //           width < 500 ? height * .02 : height * .02),
// // //                           //   textAlign: TextAlign.center,
// // //                           // )
// // //                         ],
// // //                       )
// // //                     ]),









// //                      List<dataModel> screenData = [
// //     dataModel(
// //       images: 'assets/images/skype1.png',
// //       color: Color(0xffdad4c8),
// //       text: 'Track your work ',
// //       Text: 'and get the result',
// //       text2: 'Remember to keep track of your',
// //       Text2: 'professional accomplishments.',
// //     ),
// //     dataModel(
// //       images: 'assets/images/skype2.png',
// //       color: Color(0xffffe5de),
// //       text: 'Stay Organized',
// //       Text: 'with team',
// //       text2: 'Take control of notifications',
// //       Text2: 'collaborate live or on your own time',
// //     ),
// //     dataModel(
// //       images: 'assets/images/skype3.png',
// //       color: Color(0xffdbf6e5),
// //       text: 'Get notified when',
// //       Text: 'work happens',
// //       text2: 'But understanding the contributions',
// //       Text2: 'our colleagues make to our teams',
// //       Text3: 'and companies',
// //     ),
// //   ];








//  if (width < 500)
//                 Center(
//                   child: Padding(
//                     padding: EdgeInsets.only(top: height * 0.52),
//                     child: GestureDetector(
//                       onHorizontalDragUpdate: (details) {
//                         if (details.delta.dx > 0) {
//                           carouselController.previousPage(
//                               duration: Duration(milliseconds: 300),
//                               curve: Curves.easeInOut);
//                         } else if (details.delta.dx < 0) {
//                           carouselController.nextPage(
//                               duration: Duration(milliseconds: 300),
//                               curve: Curves.easeInOut);
//                         }
//                       },
//                       child: Container(
//                         child: Column(children: [
//                           Text(
//                             screenData[pageIndex % screenData.length].text,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w500,
//                               fontSize:
//                                   width < 500 ? height * .04 : height * .04,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             screenData[pageIndex % screenData.length].Text,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w500,
//                               fontSize:
//                                   width < 500 ? height * .04 : height * .04,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                           SizedBox(
//                             height: height * .02,
//                           ),
//                           Text(
//                             screenData[pageIndex % screenData.length].text2,
//                             style: TextStyle(
//                                 fontSize:
//                                     width < 500 ? height * .022 : height * .02),
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             screenData[pageIndex % screenData.length].Text2,
//                             style: TextStyle(
//                                 fontSize:
//                                     width < 500 ? height * .02 : height * .02),
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             screenData[pageIndex % screenData.length].Text3,
//                             textAlign: TextAlign.center,
//                           )
//                         ]),
//                       ),
//                     ),
//                   ),
//                 )
//               else
//                 Padding(
//                   padding: EdgeInsets.only(top: height * .55),
//                   child: GestureDetector(
//                     onHorizontalDragUpdate: (details) {
//                       if (details.delta.dx > 0) {
//                         carouselController.previousPage(
//                             duration: Duration(milliseconds: 300),
//                             curve: Curves.easeInOut);
//                       } else if (details.delta.dx < 0) {
//                         carouselController.nextPage(
//                             duration: Duration(milliseconds: 300),
//                             curve: Curves.easeInOut);
//                       }
//                     },
//                     child: Container(
//                       child: Column(children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               screenData[pageIndex % screenData.length].text,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize:
//                                     width < 500 ? height * .04 : height * .05,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             Text(
//                               screenData[pageIndex % screenData.length].Text,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize:
//                                     width < 500 ? height * .04 : height * .05,
//                               ),
//                               textAlign: TextAlign.center,
//                             )
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               screenData[pageIndex % screenData.length].text2,
//                               style: TextStyle(
//                                   fontSize: width > 500 ? height * .026 : null),
//                               textAlign: TextAlign.center,
//                             ),
//                             SizedBox(
//                               width: width * .003,
//                             ),
//                             Text(
//                               screenData[pageIndex % screenData.length].Text2,
//                               style: TextStyle(
//                                   fontSize: width > 500 ? height * .026 : null),
//                               textAlign: TextAlign.center,
//                             ),
//                             SizedBox(
//                               width: width * .003,
//                             ),
//                             Text(
//                               screenData[pageIndex % screenData.length].Text3,
//                               style: TextStyle(
//                                   fontSize: width > 500 ? height * .026 : null),
//                               textAlign: TextAlign.center,
//                             )
//                           ],
//                         )
//                       ]),
//                     ),
//                   ),
//                 ),
