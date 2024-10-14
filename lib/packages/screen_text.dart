// // import 'package:flutter/material.dart';

// // class ScreenText extends StatelessWidget {
// //   const ScreenText({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
        
//               if (width < 500)
//                 Center(
//                   child: Padding(
//                     padding: EdgeInsets.only(top: height * 0.52),
//                     child: Column(children: [
//                       Text(
//                         screenData[pageIndex % screenData.length].text,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontSize: width < 500 ? height * .04 : height * .04,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       Text(
//                         screenData[pageIndex % screenData.length].Text,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontSize: width < 500 ? height * .04 : height * .04,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       SizedBox(
//                         height: height * .02,
//                       ),
//                       Text(
//                         screenData[pageIndex % screenData.length].text2,
//                         style: TextStyle(
//                             fontSize:
//                                 width < 500 ? height * .022 : height * .02),
//                         textAlign: TextAlign.center,
//                       ),
//                       Text(
//                         screenData[pageIndex % screenData.length].Text2,
//                         style: TextStyle(
//                             fontSize:
//                                 width < 500 ? height * .02 : height * .02),
//                         textAlign: TextAlign.center,
//                       ),
//                     ]),
//                   ),
//                 )
//               else
//                 Padding(
//                   padding: EdgeInsets.only(top: height * .55),
//                   child: Column(children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           screenData[pageIndex % screenData.length].text,
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: width < 500 ? height * .04 : height * .05,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                         Text(
//                           screenData[pageIndex % screenData.length].Text,
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: width < 500 ? height * .04 : height * .05,
//                           ),
//                           textAlign: TextAlign.center,
//                         )
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           screenData[pageIndex % screenData.length].text2,
//                           style: TextStyle(
//                               fontSize: width > 500 ? height * .026 : null),
//                           textAlign: TextAlign.center,
//                         ),
//                         SizedBox(
//                           width: width * .003,
//                         ),
//                         Text(
//                           screenData[pageIndex % screenData.length].Text2,
//                           style: TextStyle(
//                               fontSize: width > 500 ? height * .026 : null),
//                           textAlign: TextAlign.center,
//                         ),
//                         SizedBox(
//                           width: width * .003,
//                         ),
//                         Text(
//                           screenData[pageIndex % screenData.length].Text3,
//                           style: TextStyle(
//                               fontSize: width > 500 ? height * .026 : null),
//                           textAlign: TextAlign.center,
//                         )
//                       ],
//                     )
//                   ]),
//                 ),
// //       ],
// //     );
// //   }
// // }