import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 136.sp,
        decoration: BoxDecoration(
          color: const Color(0xFFF1F4FB),
          borderRadius: BorderRadius.circular(7.sp),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/loading.jpeg",
                height: 77.sp,
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Purple Hoodie",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 14.sp,
                      color: const Color(0xFF6342E8),
                    ),
                  ),
                  Text("GEETA COLLECTION",
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFA1A1A1),
                      )),
                      SizedBox(height: 20.sp),
                  Row(
                    children: [
                      Text(
                        "\$ 25.",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 18.sp,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "00",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5.sp,
                      ),
                      Text("USD",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 12.sp,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.cancel, color: const Color(0xFFA1A1A1),size: 18.sp,),
                  Container(
                    height: 30.sp,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFA1A1A1)),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(children: [
                      Container(
                        height: 30.sp,
                        width: 30.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 20.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.sp),
                      Text(
                        "1",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10.sp),
                      Container(
                        height: 30.sp,
                        width: 30.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 16.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
