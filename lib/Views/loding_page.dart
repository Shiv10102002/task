import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intask1/Views/homepage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(
       const Duration(milliseconds: 500), () => Get.offAll(() => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color:  Color(0xFF0E678F),
            ),
            Text(
              "Please Wait\nYour Account is being created!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF629CB6),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
