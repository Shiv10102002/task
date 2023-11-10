import 'package:flutter/material.dart';

// class CollegeFacilities extends StatelessWidget {
//   const CollegeFacilities({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'Facilities',
//             style: TextStyle(
//               color: Color(0xFF08232F),
//               fontSize: 16,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w500,

//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           ListView.builder(

//             physics: BouncingScrollPhysics(),
//             shrinkWrap: true,
//               itemCount: 4,
//               scrollDirection: Axis.horizontal,

//               itemBuilder: (context, index) {
//                 return FacilityContainer(index);
//               })
//         ],
//       ),
//     );
//   }
// }

List<String> facilty = [
  'Boys Hostel',
  'Girls Hostel',
  'Medical/Hospital',
  'Gym',
  'Clubs',
  'Clubs',
];
Widget facilityContainer(int index) {
  return SizedBox(
    height: 104,
    width: 64,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          facilty[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF849197),
            fontSize: 12,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          textScaleFactor: 1,
        ),
      ],
    ),
  );
}
