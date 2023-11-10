import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intask1/Views/loding_page.dart';
import 'package:intask1/constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneno = TextEditingController();
  String phone = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 24, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Color(0xFF0E678F),
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Singin to access personalized academic resources.',
                  style: TextStyle(
                    color: Color(0xFF849197),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 44),
                const Text(
                  'Mobile Number',
                  style: TextStyle(
                    color: Color(0xFF465A63),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                      controller: phoneno,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your email ';
                        }
                        return null;
                      },
                      onChanged: (value) {
                       setState(() {
                          phoneno.text = value;
                       });
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        // labelText: 'Mobile Number',

                        hintText: '00000 00000',
                        hintStyle: const TextStyle(color: Color(0xFFD5E5EC)),
                        prefixIcon: const CountryCodePicker(
                          textStyle: TextStyle(
                              color: Color(0xFF0E678F),
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                          padding: EdgeInsets.all(0),
                          initialSelection: 'IN',
                          favorite: ['IN'],
                          showCountryOnly: true,
                          showFlag: false,
                          showDropDownButton: true,
                          showOnlyCountryWhenClosed: false,
                          alignLeft: false,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFFD5E5EC), width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF0E678F), width: 2),
                            borderRadius: BorderRadius.circular(10)),
                      )),
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    phoneno.text.isEmpty
                        ? Get.snackbar("Warning", "Please Enter phone no",
                            colorText: Colors.white, backgroundColor: maincolor)
                        : Get.to(() => const LoadingPage());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 74,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 25),
                    decoration: ShapeDecoration(
                      color: phoneno.text.isEmpty
                          ? const Color(0xFFE7E9EB)
                          : const Color(0xFF0E678F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Get OTP',
                          style: TextStyle(
                            color: phoneno.text.isEmpty
                                ? const Color(0xFF849197)
                                : Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color:
                              phoneno.text.isEmpty ? Colors.grey : Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Center(
                  child: Text(
                    'or ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF96BDCE),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Center(
                  child: Text(
                    'Login in with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF96BDCE),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/google_icon.svg',
                        height: 48,
                        width: 48,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/logos_facebook.svg',
                        height: 42,
                        width: 42,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
