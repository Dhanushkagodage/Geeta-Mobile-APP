import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/cardscreen.dart';
import 'package:geeta_app/widgets/cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
              child: Text('My Cart',
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 16.sp,
                      color: Colors.black)),
            ),
          ),
          shadowColor: const Color.fromARGB(0, 255, 255, 255),
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.only(
              left: 40.sp,
              right: 40.sp,
            ),
          child: Column(
            children: [
              Expanded(child: _buildCarts()),
              Padding(
                padding: EdgeInsets.only(bottom:10.sp),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CardScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 54.sp,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6342E8),
                      borderRadius: BorderRadius.circular(56.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logout_outlined, color: Colors.white, size: 20.sp),
                          SizedBox(width: 10.sp),
                          Text('GO TO CHECKOUT',
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 11.sp,
                                  color: Colors.white)),
                                  SizedBox(width: 10.sp),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFF472CB6),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(right: 5.sp, left: 5.sp),
                              child: Text('\$ 1000',
                                  style: TextStyle(
                                      fontFamily: "Lato",
                                      fontSize: 14.sp,
                                      color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildCarts() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: 6,

      itemBuilder: (context, index) {
        return Padding(
          padding:EdgeInsets.only(bottom: 8.sp,top: 8.sp),
          child: const Cart(),
        );
      },
    );
  }
}
