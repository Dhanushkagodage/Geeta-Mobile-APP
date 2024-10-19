import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/buyscreen.dart';

class ResourceCard extends StatefulWidget {
  const ResourceCard({super.key});

  @override
  State<ResourceCard> createState() => _ResourceCardState();
}

class _ResourceCardState extends State<ResourceCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(
            builder: (context) => const Buyscreen(),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.r),
                child: SizedBox(
                  width: 170.sp,
                  height: 208.sp,
                  child: Image.asset(
                    "assets/loading.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10.sp,
                right: 10.sp,
                child: Padding(
                  padding: EdgeInsets.all(5.sp),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                    size: 24.sp,
                  ),
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.only(top: 5.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Pink Hoodie",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$40.',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "Lato",
                            color: const Color(0xFFA1A1A1)),
                      ),
                      Text(
                        "00",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: "Lato",
                            color: const Color(0xFFA1A1A1)),
                      ),
                      Text(" USD",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: "Lato",
                              color: const Color(0xFFA1A1A1))),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
