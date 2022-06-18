import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

myFullBottomSheet(BuildContext context,Widget widget) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      constraints: const BoxConstraints(
          //minHeight: MediaQuery.of(context).size.height*0.7,
          ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.04),
          //height: 0.75,
          height: MediaQuery.of(context).size.height*0.95 ,

          child: Column(
            children: <Widget>[
              widget,
            ],
          ),
        );
      });
}

myPermissionBottomSheet(BuildContext context,Widget widget) {
  Future.delayed(const Duration(seconds: 0)).then((_) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: Text(
                    "Permission required",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22.sp),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: Text(
                    "Please allow permission to 'Display over \n other apps' from settings.\n"
                        "This permission is required to provide you \n quick shortcuts to app and chat window.",
                    style: TextStyle(
                        fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.h),
                  width: 400.w,
                  height: 41.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Go to settings",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    style: ElevatedButton.styleFrom(
                      // primary: Color()
                    ),
                  ),
                ),
                Container(
                  width: 400.w,
                  height: 41.h,
                  margin: EdgeInsets.all(15),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Remind me later",
                          style: TextStyle(fontSize: 15.sp))),
                ),
              ],
            ),
          );
        });
  });
}
