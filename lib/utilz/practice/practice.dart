// import 'package:flutter/material.dart';
// import 'package:slider/homeScreen.dart';
// import 'package:slider/utilz/model.dart';


// class CarouselScreen extends StatefulWidget {
//   const CarouselScreen({super.key});

//   @override
//   State<CarouselScreen> createState() => _CarouselScreenState();
// }

// class _CarouselScreenState extends State<CarouselScreen> {
//   late PageController pageController;
//   int pageIndex = 0;
//   List<DataModel> screenData = [
//     dataModel(
//       images: 'assets/images/skype1.png',
//       color: Color(0xffdad4c8),
//       text: 'Track your work\nand get the result',
//       text2: 'Remember to keep track of your\n professional accomplishments.', Text2: '',
//     ),
//     dataModel(
//       images: 'assets/images/skype2.png',
//       color: Color(0xffffe5de),
//       text: 'Stay Organized\n with team',
//       text2:
//           'Take control of notifications,\ncollaborate live or on your own time', Text2: '',
//     ),
//     dataModel(
//       images: 'assets/images/skype3.png',
//       color: Color(0xffdbf6e5),
//       text: 'Get notified when\nwork happens',
//       text2:
//           'But understanding the contributions\nour colleagues make to our teams\nand companies', Text2: '',
//     ),
//   ];

//   late List<dataModel> largeData;

//   @override
//   void initState() {
//     super.initState();
//     pageController = PageController(initialPage: 0);
//     largeData = List.generate(
//       100,
//       (index) => screenData[index % screenData.length],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: largeData[pageIndex].color,
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
//                       setState(() {
//                         pageIndex = value;
//                       });
//                     },
//                     itemCount: largeData.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.only(bottom: height * .27),
//                           child: Center(
//                             child: Image.asset(
//                               largeData[index].images,
//                               height: height * .40,
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
//                             largeData[pageIndex].text,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w500,
//                               fontSize:
//                                   width < 500 ? height * .04 : height * .04,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                           SizedBox(height: height * .02),
//                           Text(
//                             largeData[pageIndex].text2,
//                             style: TextStyle(
//                               fontSize:
//                                   width < 500 ? height * .02 : height * .02,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ]
//               ),
//             ),
//           ),
//           SizedBox(height: height * .01),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               screenData.length,
//               (index) => Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 2),
//                 child: pageIndex % screenData.length == index
//                     ? Container(
//                         height: 9,
//                         width: 17,
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       )
//                     :const Icon(
//                         Icons.circle,
//                         color: Colors.black,
//                         size: 12,
//                       ),
//               ),
//             ).toList(),
//           ),
//           SizedBox(height: height * .08),
//           if (pageIndex % 3 == 2)
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>const Homescreen(),
//                   ),
//                 );
//               },
//               child: Container(
//                 width: height * .27,
//                 height: width < 500 ? height * .07 : height * .07,
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(30),
//                 ),
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
//              const   Text(
//                   'SKIP',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       if (pageIndex < largeData.length - 1) {
//                         pageIndex++;
//                         pageController.jumpToPage(pageIndex);
//                       }
//                     });
//                   },
//                   child: Container(
//                     width: height * .11,
//                     height: width < 500 ? height * .07 : height * .07,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(30),
//                     ),
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
//                 ),
//               ],
//             ),
//         ],
//       ),
//     );
//   }
// }
