import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intask1/Views/application_form.dart';
import 'package:intask1/widgets/course_offered_college_detail.dart';
import 'package:intask1/widgets/exam_accepted_college_detail.dart';
import 'package:intask1/widgets/facilities_college_detail.dart';
import 'package:intask1/widgets/highlits_colleg_detail.dart';
import 'package:intask1/widgets/popular_course_college_deatail.dart';

class CollegeDeatailPage extends StatefulWidget {
  const CollegeDeatailPage({super.key});

  @override
  State<CollegeDeatailPage> createState() => _CollegeDeatailPageState();
}

class _CollegeDeatailPageState extends State<CollegeDeatailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Get.back(),
        ),
        backgroundColor: const Color(0xFF0E678F),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFE7E9EB), width: 1))),
              child: Stack(children: [
                Positioned(
                    child: Image.asset(
                  "assets/madrashd.png",
                  width: MediaQuery.of(context).size.width,
                  height: 129,
                )),
                Positioned(
                    left: 24,
                    bottom: 5,
                    right: 24,
                    height: 250,
                    child: SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 68,
                            width: MediaQuery.of(context).size.width,

                            // padding:const EdgeInsets.only(right: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 68,
                                  width: 68,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1,
                                          color: const Color(0xFFE7E9EB))),
                                  child: Image.asset(
                                    "assets/madrashlogo.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "12",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          Icon(
                                            Icons.camera_alt_outlined,
                                            color: Colors.white,
                                            size: 12,
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orangeAccent,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            '4.3 /5',
                                            style: TextStyle(
                                              color: Color(0xFF849197),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textScaleFactor: 1,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '(812 Reviews)',
                                            style: TextStyle(
                                              color: Color(0xFF0E678F),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      )
                                    ])
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'IIT Madras - Indian Institute Of Technology Madras: Admission 2023, Rankings, Courses, Fees',
                            style: TextStyle(
                              color: Color(0xFF08232F),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                            textScaleFactor: 1,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_pin,
                                    color: Color(0xFF849197),
                                    size: 12,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    'Adyar',
                                    style: TextStyle(
                                      color: Color(0xFF849197),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textScaleFactor: 1,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 5,
                                    height: 16,
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 4),
                                    child: Center(
                                        child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    )),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    ' Autonamous',
                                    style: TextStyle(
                                      color: Color(0xFF849197),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textScaleFactor: 1,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 5,
                                    height: 16,
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 4),
                                    child: Center(
                                        child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    )),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '#10',
                                    style: TextStyle(
                                      color: Color(0xFF00C20B),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textScaleFactor: 1,
                                  ),
                                  const SizedBox(width: 5),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 46,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MaterialButton(
                                  elevation: 0,
                                  height: 46,
                                  minWidth:
                                      MediaQuery.of(context).size.width * 0.4,
                                  color: const Color(0xFFE7E9EB),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  onPressed: () {},
                                  child: const Text(
                                    'Will you get in?',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF465A63),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                    textScaleFactor: 1,
                                  ),
                                ),
                                MaterialButton(
                                  elevation: 0,
                                  height: 46,
                                  minWidth:
                                      MediaQuery.of(context).size.width * 0.4,
                                  color: const Color(0xFFA4BE39),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  onPressed: () {
                                    Get.to(() => const ApplicationForm());
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'Brochure',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textScaleFactor: 1,
                                      ),
                                      Icon(
                                        Icons.download,
                                        color: Colors.white,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
              child: collegeHighlights(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 24, right: 24),
              child: courseOffered(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 24, right: 24),
              child: PopularCourse(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, top: 20),
              child: CollegeFacilieties(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, top: 20),
              child: ExamsAcceptedCollege(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Address and contact Details',
                      style: TextStyle(
                        color: Color(0xFF08232F),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: SizedBox(
                            height: 180,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              'assets/map.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 80,
                            left: 80,
                            child: MaterialButton(
                              height: 49,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              child: const Text(
                                'View on Map',
                                style: TextStyle(
                                  color: Color(0xFF0E678F),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textScaleFactor: 1,
                              ),
                            ))
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class CollegeFacilieties extends StatelessWidget {
  const CollegeFacilieties({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Facilities',
            style: TextStyle(
              color: Color(0xFF08232F),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
            textScaleFactor: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 104,
            child: ListView.builder(
                itemExtent: 88,
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: facilityContainer(index));
                }),
          ),
        ],
      ),
    );
  }
}
