import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({Key? key}) : super(key: key);

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      ),
    );
  }

  @override
  void initState() {

    Future.delayed(const Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
          context: context,
          builder: (builder) {
        return SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height*0.75 ,
                padding: EdgeInsets.all(8.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[


                    Padding(
                        padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                        child: TextField(

                          decoration: InputDecoration(
                              labelText: 'Mobile Number',
                              hintText: 'Enter Mobile Number'),
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                      child: Text(
                        "By continuing, you agree to our Terms and Privacy Policy "
                            "create an account.",
                        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),

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

                  ],
                ),
              ));
      }
          );
    });
    super.initState();
  }
}
