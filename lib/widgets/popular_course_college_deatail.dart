import 'package:flutter/material.dart';
import 'package:intask1/widgets/college_slider_homepage.dart';

class PopularCourse extends StatelessWidget {
  const PopularCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Popular Courses',
          style: TextStyle(
            color: Color(0xFF08232F),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisSpacing: 10, mainAxisExtent: 150),
            itemBuilder: (context, index) {
              return courseContainer(context);
            })
      ],
    );
  }
}

Widget courseContainer(var context) {
  return Container(
    height: 145,
    constraints:  BoxConstraints(
      minHeight: 138,
      // minWidth: MediaQuery.of(context).size.width 
    ),
    padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: const Color(0xFFEAF2F5))),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'B.Tech Mechanical Engineering',
            style: TextStyle(
              color: Color(0xFF465A63),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
            textScaleFactor: 1,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.star_outline,
                color: Colors.orangeAccent,
                size: 16,
              ))
        ],
      ),
      const FittedBox(
        child: Row(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Duration: ',
                    style: TextStyle(
                      color: Color(0xFF849197),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: '4 years',
                    style: TextStyle(
                      color: Color(0xFF465A63),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Dotwidget(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Fees: ',
                    style: TextStyle(
                      color: Color(0xFF849197),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: '8.31 Lakhs',
                    style: TextStyle(
                      color: Color(0xFF465A63),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Dotwidget(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Seats: ',
                    style: TextStyle(
                      color: Color(0xFF849197),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: '169',
                    style: TextStyle(
                      color: Color(0xFF465A63),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              height: 46,
              minWidth:139,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFA4BE39)),
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Text(
                    'Brochure',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA4BE39),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                    textScaleFactor: 1,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.download_outlined,
                    color: Color(0xFFA4BE39),
                    size: 14,
                  )
                ],
              ),
            ),
            
            MaterialButton(
              elevation: 0,
              height: 46,
              minWidth: 137,
              color: const Color(0xFFEAF2F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Text(
                    'Compare',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF629CB6),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                    textScaleFactor: 1,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.square_outlined,
                    color: Color(0xFF629CB6),
                    size: 14,
                  )
                ],
              ),
            )
          ],
        ),
      )
    ]),
  );
}
