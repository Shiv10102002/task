

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intask1/constants.dart';
import 'package:intask1/widgets/payment.dart';
import 'package:intask1/widgets/select_exam.dart';
import 'package:intask1/widgets/your_details.dart';
import 'package:intask1/widgets/your_guardian_details.dart';

class ApplicationForm extends StatefulWidget {
  const ApplicationForm({super.key});

  @override
  State<ApplicationForm> createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationForm> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: maincolor,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Application Form',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
            physics:const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              children: const [
                SelectExam(),
                YourDetails(),
                GuardianDetails(),
                PaymentDetails(),
              ],
            ),
          ),
          currentPage < 3
              ? Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16),
                  child: MaterialButton(
                    elevation: 0,
                    height: 40,
                    minWidth: MediaQuery.of(context).size.width,
                    color: const Color(0xFFD3EF64),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: currentPage < 3
                        ? () => _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease)
                        : null,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Next'),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 12,
                        )
                      ],
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
