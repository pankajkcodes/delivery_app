import 'package:delivery_app/views/account/city.dart';
import 'package:delivery_app/views/account/create_account.dart';
import 'package:delivery_app/views/account/locality.dart';
import 'package:delivery_app/views/account/personal_details.dart';
import 'package:delivery_app/views/authentication/mobile.dart';
import 'package:delivery_app/views/authentication/signin.dart';
import 'package:delivery_app/views/components/display_over_other.dart';
import 'package:delivery_app/views/components/language_screen.dart';
import 'package:delivery_app/views/components/pay_fees.dart';
import 'package:delivery_app/views/components/select_size.dart';
import 'package:delivery_app/views/onboarding/onboarding.dart';
import 'package:delivery_app/views/onboarding/onboarding_screen.dart';
import 'package:delivery_app/views/onboarding/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Delivery App',

          home: child,
        );
      },
      child: const SelectSizeScreen(),
    );
  }
}
