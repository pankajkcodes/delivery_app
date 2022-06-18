import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                child: Text(
                  "Get Started",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                child: Text(
                  "Please enter your mobile number to log in or"
                  "create an account.",
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: TextField(

                    decoration: InputDecoration(
                        labelText: 'Mobile Number',
                        hintText: 'Enter Mobile Number'),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'OTP',
                        hintText: 'Enter OTP Number'),
                  )),

              Container(
                margin: EdgeInsets.all(15.h),
                width: 400.w,
                height: 41.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Continue",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    // primary: Color()
                  ),
                ),
              ),
              Container(
                width: 400.w,
                height: 41.h,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Resend OTP",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    // primary: Color()
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
