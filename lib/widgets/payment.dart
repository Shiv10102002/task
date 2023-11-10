import 'package:flutter/material.dart';
import 'package:intask1/constants.dart';
import 'package:intask1/widgets/form_step_four.dart';
import 'package:intask1/widgets/your_details.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String cardno;
  late String cvv;
  late String cardexpdate;

  String paymentmethod = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 25,
          ),
          const FormStepFour(),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color(0xFFF8F9FC),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFE7E9EB),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amount to be paid',
                              style: TextStyle(
                                color: Color(0xFF191C1E),
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Application form',
                              style: TextStyle(
                                color: Color(0xFF41484D),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          ]),
                    ),
                    Text(
                      '₹49.00',
                      style: TextStyle(
                        color: Color(0xFF191C1E),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Form(
            key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Select Payment Options',
                  style: TextStyle(
                    color: Color(0xFF191C1E),
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF8F9FC),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFDDE3EA)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'UPI',
                        style: TextStyle(
                          color: Color(0xFF41484D),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                              contentPadding: const EdgeInsets.all(0),
                              leading: Container(
                                height: 60,
                                width: 60,
                              
                                decoration:const BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/Leading.png'),fit: BoxFit.cover)
                                ),
                              ),
                              title: const Text(
                                'Google Pay',
                                style: TextStyle(
                                  color: Color(0xFF191C1E),
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              trailing: Radio(
                                  value: 'googlepay',
                                  groupValue: paymentmethod,
                                  onChanged: (value) {
                                    setState(() {
                                      paymentmethod = value!;
                                    });
                                  })),
                          const SizedBox(
                            height: 16,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: Container(
                              height: 60,
                              width: 60,
                               decoration:const BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/Leading.png'),fit: BoxFit.cover)
                                ),
                            ),
                            title: const Text(
                              'Phonepe',
                              style: TextStyle(
                                color: Color(0xFF191C1E),
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            trailing: Radio(
                              value: 'phonepay',
                              groupValue: paymentmethod,
                              onChanged: (val) {
                                setState(() {
                                  paymentmethod = val!;
                                });
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 20,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF8F9FC),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFDDE3EA)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CREDIT/DEBIT/ATM CARD',
                        style: TextStyle(
                          color: Color(0xFF41484D),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                        SizedBox(
                    height: 56,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your card no';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        cardno = value;
                      },
                       keyboardType: TextInputType.phone,
                      //    controller: _namecontroller,
                      decoration: textFormDecoration.copyWith(
                        labelText: 'Card Number',
                        hintText: 'xxxx xxxx xxxx xxxx',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 56,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width*0.4,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your card no validity';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          cardno = value;
                        },
                         keyboardType: TextInputType.datetime,
                        //    controller: _namecontroller,
                        decoration: textFormDecoration.copyWith(
                          labelText: 'Valid Thru',
                          hintText: 'MM/YY',
                        ),
                      ),
                    ),
                     SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width*0.4,
              
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter card cvv no';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          cvv = value;
                        },
                         keyboardType: TextInputType.phone,
                        //    controller: _namecontroller,
                        decoration: textFormDecoration.copyWith(
                          labelText: 'CVV ',
                          hintText: 'xxx',
                        ),
                      ),
                    ),
                    ],
                                 ),
                  )
                    ],
                  ),
                ),
              )
                      ],
                    )),
            Padding(padding: const EdgeInsets.only(left: 16,top: 20,bottom: 20),
            child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(color: Color(0xFFEDEEF0)),
          child: Container(
          padding: const EdgeInsets.only(left: 16,top: 16,bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             const  Text(
            '₹49.00',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF191C1E),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
             
            ),
                  ),
                 
                  MaterialButton(
                  
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            height: 56,
            minWidth: 104,
            onPressed: (){},
            color: maincolor,
                  child:const  Text(
            'Pay Now',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
             
            ),
                  ),
                  )
            ]),
          ),
            ),)
        ]),
      ),
    );
  }
}
