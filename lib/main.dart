import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/loadingscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, _) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "GEETA_APP",
        home: LoadingScreen(),
      ),
      designSize: const Size(412, 732),
    );
  }
}
