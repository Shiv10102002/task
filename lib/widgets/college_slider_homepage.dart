import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intask1/Views/college_detail_page.dart';

class CollegeSlider extends StatefulWidget {
  const CollegeSlider({super.key});

  @override
  State<CollegeSlider> createState() => _CollegSlidetState();
}

class _CollegSlidetState extends State<CollegeSlider> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 214),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(() =>const CollegeDeatailPage());
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color.fromRGBO(231, 233, 235, 1))),
              width: 214,
              constraints: const BoxConstraints(minHeight: 271),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 89,
                    width: 214,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            "assets/madrash.png",
                            height: 89,
                            width: 214,
                          ),
                        ),
                        Positioned(
                            top: 50,
                            left: 10,
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/madrashlogo.png',
                                  height: 28,
                                  width: 28,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                const Text(
                                  'IIT Madras - Indian Institute Of\n Technology Madras',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 3,
                                  textScaleFactor: 1,
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 214,
                    padding: const EdgeInsets.only(
                      right: 8,
                      left: 8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         const Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: Color(0xFF849197),
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Adyar',
                                  style: TextStyle(
                                    color: Color(0xFF849197),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textScaleFactor: 1,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Dotwidget(),
                                SizedBox(width: 5),
                                Text(
                                  ' Autonamous',
                                  style: TextStyle(
                                    color: Color(0xFF849197),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textScaleFactor: 1,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                               Dotwidget(),
                                SizedBox(width: 5),
                                Text(
                                  '#10',
                                  style: TextStyle(
                                    color: Color(0xFF00C20B),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textScaleFactor: 1,
                                ),
                                SizedBox(width: 5),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Total Fees Range',
                              style: TextStyle(
                                color: Color(0xFF849197),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                              textScaleFactor: 1,
                            ),
                            const Text(
                              '₹1.10 Lakhs ',
                              style: TextStyle(
                                color: Color(0xFF334155),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                              textScaleFactor: 1,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'View all courses and fees',
                                  style: TextStyle(
                                    color: Color(0xFF465A63),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textScaleFactor: 1,
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                  size: 12,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                constraints: const BoxConstraints(minHeight: 54),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color:
                                        const Color.fromRGBO(234, 242, 245, 1)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Download brochure',
                                      style: TextStyle(
                                        color: Color(0xFF0E678F),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textScaleFactor: 1,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.download,
                                      color: Color(0xFF0E678F),
                                      size: 16,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class Dotwidget extends StatelessWidget {
  const Dotwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 16,
      padding:
          const EdgeInsets.only(top: 8, bottom: 4),
      child: Center(
          child: Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius:
                BorderRadius.circular(20)),
      )),
    );
  }
}
