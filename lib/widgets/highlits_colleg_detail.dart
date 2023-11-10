
import 'package:flutter/material.dart';

Widget collegeHighlights() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Highlights',
        style: TextStyle(
          color: Color(0xFF08232F),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: const Color(0xFFEAF2F5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: rowelement('Established', '1995')),
            const Divider(color: Color(0xFFEAF2F5)),
            Container(child: rowelement('Ownership', 'Public/Government', )),
            const Divider(color: Color(0xFFEAF2F5)),
            Container(child: rowelement('Institute Type', 'Institute of Eminence', )),
            const Divider(color: Color(0xFFEAF2F5)),
            Container(child: rowelement('Campus Size', '550.0 acres', )),
            const Divider(color: Color(0xFFEAF2F5)),
            Container(child: rowelement('Student Count', '12004', )),
            const Divider(color: Color(0xFFEAF2F5)),
            Container(child: rowelement('Faculty Count', '673', )),
            const Divider(color: Color(0xFFEAF2F5)),
            Container(child: rowelement('Gender', 'Co-ed', )),
          ],
        ),
      )
    ],
  );
}

Widget rowelement(String key, String value,) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: 132,
        child: Text(
          key,
          style: const TextStyle(
            color: Color(0xFF849197),
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          textScaleFactor: 1,
        ),
      ),
      SizedBox(
        width: 156,
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  value,
                  style: const TextStyle(
                    color: Color(0xFF465A63),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                  textScaleFactor: 1,
                ),
              ),
             
            ],
          ),
        ),
      ),
    ],
  );
}
