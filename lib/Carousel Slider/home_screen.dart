// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:slider/Carousel%20Slider/model.dart';

// import 'package:slider/homeScreen.dart';

// class CarouselScreen extends StatefulWidget {
//   const CarouselScreen({super.key});

//   @override
//   State<CarouselScreen> createState() => _CarouselScreenState();
// }

// class _CarouselScreenState extends State<CarouselScreen> {
//   PageController pageController = PageController(initialPage: 0);
//   int pageIndex = 0;
//   List<dataModel> screenData = [
//     dataModel(
//         images: 'assets/images/skype1.png',
//         color: Color(0xffdad4c8),
//         text: 'Track your work\nand get the result',
//         text2:
//             'Remember to keep track of your\n professional accomplishments.'),
//     dataModel(
//       images: 'assets/images/skype2.png',
//       color: Color(0xffffe5de),
//       text: 'Stay Organized\n with team',
//       text2:
//           'Take control of notifications,\ncollaborate live or on your own time',
//     ),
//     dataModel(
//       images: 'assets/images/skype3.png',
//       color: Color(0xffdbf6e5),
//       text: 'Get notified when\nwork happens',
//       text2:
//           'But understanding the contributions\nour colleagues make to our teams\nand companies',
//     )
//   ];
//   List<String> imgPath = [
//     'assets/images/skype1.png',
//     'assets/images/skype2.png',
//     'assets/images/skype3.png'
//   ];
//   List<List<String>> text = [
//     [
//       'Track your work\nand get the result',
//     ],
//     [
//       'Stay Organized\n with team',
//       'But understanding the contributions\nour colleagues make to our teams\nand companies',
//     ],
//     [
//       'Get notified when\nwork happens',
//       'Take control of notifications,\ncollaborate live or on your own time'
//     ]
//   ];
//   List<Color> color = [Color(0xffffe5de), Color(0xffdbf6e5)];
//   List<String> largeimgPath = [];
//   List<List<String>> largetextPath = [];
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;

//     largetextPath =
//         List.generate(text.length * 100, (index) => text[index % text.length]);
//     largeimgPath = List.generate(
//         imgPath.length * 100, (index) => imgPath[index % imgPath.length]);
//     return Scaffold(
//       backgroundColor: color[pageIndex % color.length],
//       body: Column(
//         children: [
//           Padding(
//             padding:
//                 EdgeInsets.only(top: width < 500 ? height * .10 : height * .04),
//             child: SizedBox(
//               height: height * .65,
//               child: Stack(
//                 children: [
//                   PageView.builder(
//                     controller: pageController,
//                     onPageChanged: (value) {
//                       pageIndex = value;
//                       setState(() {});
//                     },
//                     itemCount: largeimgPath.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.only(bottom: height * .27),
//                           child: Center(
//                             child: Image.asset(
//                               height: height * .40,
//                               largeimgPath[index],
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: height * .42),
//                     child: Center(
//                       child: Column(
//                         children: [
//                           Text(
//                             largetextPath[pageIndex][0],
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
//                             largetextPath[pageIndex][1],
//                             style: TextStyle(
//                                 fontSize:
//                                     width < 500 ? height * .02 : height * .02),
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: height * .01,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//                 imgPath.length,
//                 (index) => Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 2),
//                       child: pageIndex % imgPath.length == index
//                           ? Container(
//                               height: 9,
//                               width: 17,
//                               decoration: BoxDecoration(
//                                   color: Colors.black,
//                                   borderRadius: BorderRadius.circular(10)),
//                             )
//                           : Icon(
//                               Icons.circle,
//                               color: Colors.black,
//                               size: 12,
//                             ),
//                     )).toList(),
//           ),
//           SizedBox(
//             height: height * .08,
//           ),
//           if (pageIndex % 3 == 2)
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(
//                   builder: (context) {
//                     return Homescreen();
//                   },
//                 ));
//               },
//               child: Container(
//                 width: height * .27,
//                 height: width < 500 ? height * .07 : height * .07,
//                 decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(30)),
//                 child: Center(
//                   child: Text(
//                     'START',
//                     style: TextStyle(
//                       fontSize: width < 500 ? width * .04 : height * .02,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           else
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text(
//                   'SKIP',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       pageIndex++;
//                     });
//                   },
//                   child: Container(
//                     width: height * .11,
//                     height: width < 500 ? height * .07 : height * .07,
//                     decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(30)),
//                     child: Center(
//                       child: Text(
//                         'NEXT',
//                         style: TextStyle(
//                           fontSize: width < 500 ? width * .04 : height * .02,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//         ],
//       ),
//     );
//   }
// }
