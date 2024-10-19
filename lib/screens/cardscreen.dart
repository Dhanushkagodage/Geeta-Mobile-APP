import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/successscreen.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(
            left: 20.sp,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(
              right: 20.sp,
            ),
            child: Text('Credit / Debit card',
                style: TextStyle(
                    fontFamily: "Lato", fontSize: 16.sp, color: Colors.black)),
          ),
        ),
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40.sp, right: 40.sp),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/Card.png",
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 90.sp),
                    child: Column(
                      children: [
                        Text(
                          "5757 4747 5757 4747",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 25.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 40.sp),
                        Padding(
                          padding: EdgeInsets.only(left: 40.sp, right: 40.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "John Doe",
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "12/24",
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: const Color(0xFFA1A1A1),
                    size: 25.sp,
                  )),
              _inputTextFeild("Name on card", "John Doe"),
              SizedBox(height: 10.sp),
              _inputTextFeild("Card Number", "XXXX XXXX XXXX XXXX"),
              SizedBox(height: 10.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _inputTextFeild("Expiry Date", "MM/YY"),
                  ),
                  SizedBox(width: 10.sp), // Add some spacing between the fields
                  Expanded(
                    child: _inputTextFeild("CVV", "XXX"),
                  ),
                ],
              ),
              SizedBox(height: 20.sp),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Successscreen(),
                      ),
                    );
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.sp),
                  child: Container(
                    height: 54.sp,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6342E8),
                      borderRadius: BorderRadius.circular(56.r),
                    ),
                    child: Center(
                      child: Text('USE THIS CARD',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 11.sp,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputTextFeild(String Label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Label,
          style: TextStyle(
              fontFamily: "Lato", fontSize: 14.sp, color: Colors.black),
        ),
        SizedBox(height: 5.sp),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: "Lato",
              fontSize: 14.sp,
              color: const Color(0xFFA1A1A1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Color(0xFFA1A1A1),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Color(0xFFA1A1A1),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 10.sp),
          ),
        ),
      ],
    );
  }
}
