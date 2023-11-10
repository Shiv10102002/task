import 'package:flutter/material.dart';

class ExamsAcceptedCollege extends StatelessWidget {
  const ExamsAcceptedCollege({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Exams Accepted',
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
            height: 85,
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemExtent: 286,
              physics: const BouncingScrollPhysics(),
               scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  // height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: const Color(0xFFEAF2F5))),
                  child:   Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration:const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle
                        
                      ),
                    ),
                  const SizedBox(
                    width: 8,
                  ),
                     const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Text(
                      'GATE Entrance 2024',
                      style: TextStyle(
                        color: Color(0xFF08232F),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                      textScaleFactor: 1,
                    ),
                         Text(
                          'No exam Date ',
                          style: TextStyle(
                            color: Color(0xFF849197),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                          textScaleFactor: 1,
                    ),
                       ],
                     ),
                  ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
