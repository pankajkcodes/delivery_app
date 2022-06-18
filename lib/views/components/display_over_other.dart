import 'package:delivery_app/views/components/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisplayOverOthersScreen extends StatefulWidget {
  const DisplayOverOthersScreen({Key? key}) : super(key: key);

  @override
  State<DisplayOverOthersScreen> createState() => _DisplayOverOthersScreenState();
}

class _DisplayOverOthersScreenState extends State<DisplayOverOthersScreen> {

  @override
  void initState() {
    displayOverOtherScreen();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(onPressed: (){
          myFullBottomSheet(context,displayOverOtherScreen());
        }, child: Text("Hi"),),
      ),
    );
  }
}


Widget displayOverOtherScreen() {
  return SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB( 15.w,5.h,15.w,5.h),
          child: Text(
            "Display over other apps",
            style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
          ),
        ),
        CheckboxListTile(title: const Text("Allow display over other apps"),value: true, onChanged: (bool? checkBoxState){}),

        Padding(
          padding: EdgeInsets.fromLTRB( 15.w,5.h,15.w,5.h),
          child: Text(
            "Please allow permission to 'Display over \n other apps' from settings.\n"
                "This permission is required to provide you \n quick shortcuts to app and chat window.",
            style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400),
          ),
        ),

      ],
    ),
  );
}
