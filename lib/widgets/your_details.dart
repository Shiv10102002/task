import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intask1/constants.dart';
import 'package:intask1/widgets/form_step_two.dart';

class YourDetails extends StatefulWidget {
  const YourDetails({super.key});

  @override
  State<YourDetails> createState() => _YourDetailsState();
}

class _YourDetailsState extends State<YourDetails> {
  late String name;
  late String email;

  late String mobileno;
  late String address;
  late String state;
  late String city;
  late String pincode;
  late String dob;
  String gender = '';

  final ImagePicker _picker = ImagePicker();

  XFile? _imageFile;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // void _pickImageFromCamera() async {
  //   try {
  //     final pickedImage = await _picker.pickImage(
  //         source: ImageSource.camera,
  //         maxHeight: 300,
  //         maxWidth: 300,
  //         imageQuality: 95);
  //     setState(() {
  //       _imageFile = pickedImage;
  //     });
  //   } catch (e) {
  //     // print(e);
  //   }
  // }

  void _pickImageFromGallery() async {
    try {
      final pickedImage = await _picker.pickImage(
          source: ImageSource.gallery,
          maxHeight: 300,
          maxWidth: 300,
          imageQuality: 95);
      setState(() {
        _imageFile = pickedImage;
      });
    } catch (e) {
      // print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 25,
          ),
          const FormStateTwo(),
          const SizedBox(
            height: 20,
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
                        keyboardType: TextInputType.name,
                        onChanged: (value) {
                          name = value;
                        },
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
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          pincode = value;
                        },
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
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Gender',
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
                                  color: gender == 'male'
                                      ? const Color(0x1E49454F)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFF71787E))),
                                  onPressed: () {
                                    setState(() {
                                      gender = 'male';
                                    });
                                  },
                                  child: const Text(
                                    'Male',
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
                                  color: gender == 'female'
                                      ? const Color(0x1E49454F)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFF71787E))),
                                  onPressed: () {
                                    setState(() {
                                      gender = 'female';
                                    });
                                  },
                                  child: const Text(
                                    'Female',
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
                      height: 8,
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '10th Marksheet',
                            style: TextStyle(
                              color: Color(0xFF41484D),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          MaterialButton(
                            height: 64,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF71787E))),
                            onPressed: () {
                              _pickImageFromGallery();
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Upload 10th Marksheet',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF00658E),
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.upload_outlined,
                                  color: Color(0xFF00658E),
                                  size: 14,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '12th Marksheet',
                            style: TextStyle(
                              color: Color(0xFF41484D),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          MaterialButton(
                            height: 64,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF71787E))),
                            onPressed: () {
                              _pickImageFromGallery();
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Upload 12th Marksheet',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF00658E),
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.upload_outlined,
                                  color: Color(0xFF00658E),
                                  size: 14,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          )
        ]),
      ),
    );
  }
}

var textFormDecoration = InputDecoration(
  labelText: 'Full Name',
  hintText: 'Enter your full name',
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF71787E), width: 1),
      borderRadius: BorderRadius.circular(5)),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: maincolor, width: 2),
      borderRadius: BorderRadius.circular(5)),
);
