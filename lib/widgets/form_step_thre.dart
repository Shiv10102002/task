import 'package:flutter/material.dart';

class FormStepThree extends StatelessWidget {
  const FormStepThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
               
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 46,
                  child: Container(
                 
                    height: 4,
                    padding: const EdgeInsets.only(right: 95),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(color: Color(0xFFE1E2E5)),
                    child: Container(
                      width: 260,
                      height: 4,
                      decoration: const BoxDecoration(color: Color(0xFF00658E)),
                    ),
                  ),
                ),
                Positioned(
                  left: 200,
                  top: 0,
                  child: SizedBox(
                    width: 120,
                    height: 50,
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
                            child:const  Center(
                              child: Text(
                                'Guardian Details',
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
                          left: 68,
                          top: 46,
                          child: Transform(
                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
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