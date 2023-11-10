import 'package:flutter/material.dart';

class FormStepOne extends StatefulWidget {
  const FormStepOne({super.key});

 
 
 
  @override
  State<FormStepOne> createState() => _FormStepOneState();
}

class _FormStepOneState extends State<FormStepOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 46,
                  child: Container(
                    height: 4,
                    padding: const EdgeInsets.only(right: 285),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(color: Color(0xFFE1E2E5)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 85,
                          height: 4,
                          decoration:
                              const BoxDecoration(color: Color(0xFF00658E)),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 47,
                  top: 0,
                  child: SizedBox(
                    width: 120,
                    height: 46,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 120,
                            height: 36,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF00658E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Select Exams',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                                textScaleFactor: 1,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 45,
                          top: 46,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(3.14),
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF00658E),
                                shape: StarBorder.polygon(sides: 3),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
