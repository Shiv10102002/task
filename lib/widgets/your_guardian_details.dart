import 'package:flutter/material.dart';
import 'package:intask1/widgets/form_step_thre.dart';
import 'package:intask1/widgets/your_details.dart';

class GuardianDetails extends StatefulWidget {
  const GuardianDetails({super.key});

  @override
  State<GuardianDetails> createState() => _GuardianDetailsState();
}

class _GuardianDetailsState extends State<GuardianDetails> {
  late String name;
  late String email;
  late String mobileno;
  late String address;
  late String state;
  late String city;
  late String pincode;
  late String dob;
  String relation = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 25,
          ),
          const FormStepThree(),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: _formKey,
                child: Column(
              children: [
                SizedBox(
                  height: 56,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your full name';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                    },
                     keyboardType: TextInputType.name,
                    //    controller: _namecontroller,
                    decoration: textFormDecoration.copyWith(
                      labelText: 'Full Name',
                      hintText: 'Enter your Full Name',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Relation',
                              style: TextStyle(
                                color: Color(0xFF41484D),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              children: [
                                MaterialButton(
                                  elevation: 0,
                                  height: 40,
                                  color: relation == 'Father'
                                      ? const Color(0x1E49454F)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFF71787E))),
                                  onPressed: () {
                                    setState(() {
                                      relation = 'Father';
                                    });
                                  },
                                  child: const Text(
                                    'Father',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF41484D),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                MaterialButton(
                                  elevation: 0,
                                  height: 40,
                                  color: relation == 'Mother'
                                      ? const Color(0x1E49454F)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFF71787E))),
                                  onPressed: () {
                                    setState(() {
                                      relation = 'Mother';
                                    });
                                  },
                                  child: const Text(
                                    'Mother',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF41484D),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                MaterialButton(
                                  elevation: 0,
                                  height: 40,
                                  color: relation == 'Guardian'
                                      ? const Color(0x1E49454F)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFF71787E))),
                                  onPressed: () {
                                    setState(() {
                                      relation = 'Guardian';
                                    });
                                  },
                                  child: const Text(
                                    'Guardian',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF41484D),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )

                              ],
                            )
                          ]),
                    ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 56,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your email';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      email = value;
                    },
                     keyboardType: TextInputType.emailAddress,
                    //    controller: _namecontroller,
                    decoration: textFormDecoration.copyWith(
                      labelText: 'Email',
                      hintText: 'abc@gmail.com',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 56,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your mobile no';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      mobileno = value;
                    },
                     keyboardType: TextInputType.phone,
                    //    controller: _namecontroller,
                    decoration: textFormDecoration.copyWith(
                      labelText: 'Mobile Number',
                      hintText: 'Enter your Mobile no',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 56,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your address';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      address = value;
                    },
                     keyboardType: TextInputType.streetAddress,
                    //    controller: _namecontroller,
                    decoration: textFormDecoration.copyWith(
                      labelText: 'Address',
                      hintText: 'Enter address',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 56,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your State';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      state = value;
                    },
                     keyboardType: TextInputType.name,
                    //    controller: _namecontroller,
                    decoration: textFormDecoration.copyWith(
                      labelText: 'State',
                      hintText: 'Enter your State',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 56,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your city';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      city = value;
                    },
                     keyboardType: TextInputType.name,
                    //    controller: _namecontroller,
                    decoration: textFormDecoration.copyWith(
                      labelText: 'City',
                      hintText: 'Enter your city',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 56,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your pincode';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      pincode = value;
                    },
                     keyboardType: TextInputType.phone,
                    //    controller: _namecontroller,
                    decoration: textFormDecoration.copyWith(
                      labelText: 'Pin Code',
                      hintText: 'Enter your pin code',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 56,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your date of birth';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      dob = value;
                    },
                     keyboardType: TextInputType.datetime,
                    //    controller: _namecontroller,
                    decoration: textFormDecoration.copyWith(
                      labelText: 'DOB',
                      hintText: 'Enter your date of birth',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )),
          )
        ]),
      ),
    );
  }
}
