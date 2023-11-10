import 'package:flutter/material.dart';
import 'package:intask1/constants.dart';
import 'package:intask1/widgets/form_step_one.dart';

class SelectExam extends StatefulWidget {
  const SelectExam({super.key});

  @override
  State<SelectExam> createState() => _SelectExamState();
}

class _SelectExamState extends State<SelectExam> {
  bool selctexam = false;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 25,
            ),
            const FormStepOne(),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                CheckBox(text: "SRM Entrance", checkvalue: selctexam),
                CheckBox(text: "JEE", checkvalue: selctexam),
                CheckBox(text: "JEE Advanced", checkvalue: selctexam),
                CheckBox(text: "NEET", checkvalue: selctexam),
                CheckBox(text: "GATE", checkvalue: selctexam),
                CheckBox(text: "NPTEL", checkvalue: selctexam),
                CheckBox(text: "DESIGN", checkvalue: selctexam),
                CheckBox(text: "VIT Entrance", checkvalue: selctexam),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  CheckBox({super.key, required this.text, required this.checkvalue});
 String text;
 bool checkvalue;

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                  activeColor: maincolor,
                  value: widget.checkvalue,
                  onChanged: (val) {
                    setState(() {
                      widget.checkvalue = val!;
                    });
                  }),
              Text(
                widget.text,
                style: const TextStyle(
                  color: Color(0xFF191C1E),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_right,
            color: Colors.black,
            size: 20,
          )
        ],
      ),
    );
  }
}
