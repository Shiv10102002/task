import 'package:flutter/material.dart';

class FormStateTwo extends StatelessWidget {
  const FormStateTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
        
          height: 50,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width:120,
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
                        child:const Center(
                          child:  Text(
                            'Your Details',
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
                      left: 65,
                      top: 46,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(3.14),
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration:const ShapeDecoration(
                            color: Color(0xFF00658E),
                            shape: StarBorder.polygon(sides: 3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 4,
                padding: const EdgeInsets.only(right: 173),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(color: Color(0xFFE1E2E5)),
                child: Container(
                  width: 190,
                  height: 4,
                  decoration: const BoxDecoration(color: Color(0xFF00658E)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
