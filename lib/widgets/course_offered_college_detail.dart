import 'package:flutter/material.dart';

Widget courseOffered() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Courses Offered',
            style: TextStyle(
              color: Color(0xFF08232F),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
            textScaleFactor: 1,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'View All',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF0E678F),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.10,
              ),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: const Color(0xFFEAF2F5))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Engineering and Architecture',
            style: TextStyle(
              color: Color(0xFF465A63),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              InkWell(onTap: () {}, child: clipbutton("M.E / M.Tech")),
              InkWell(onTap: () {}, child: clipbutton('B.E/B.Tech')),
              InkWell(onTap: () {}, child: clipbutton('M.S')),
              InkWell(onTap: () {}, child: clipbutton('+2 Degrees'))
            ],
          )
        ]),
      ),
     const SizedBox(height: 12,),
       Container(
        padding:const EdgeInsets.all(12),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: const Color(0xFFEAF2F5))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Management and business Administration',
            style: TextStyle(
              color: Color(0xFF465A63),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              InkWell(onTap: () {}, child: clipbutton("M.Phil.")),
              
              InkWell(onTap: () {}, child: clipbutton('M.S')),
              InkWell(onTap: () {}, child: clipbutton('MBA'))
            ],
          )
        ]),
      )
    ],
  );
}

Widget clipbutton(String text) {
  return Container(
    // height: 36,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 1, color: const Color(0xFF849197))),
    child: Text(
      text,
      style: const TextStyle(
        color: Color(0xFF849197),
        fontSize: 12,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
       
      ),
      textAlign: TextAlign.center,
      // textScaleFactor: 1,
    ),
  );
}
