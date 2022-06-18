import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

uploadAadharBottomSheet(BuildContext context) {
  Future.delayed(const Duration(seconds: 0)).then((_) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Container(

              height: MediaQuery.of(context).size.height*0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                          "Upload Address Proof - Front ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22.sp),
                        ),
                        IconButton(
                          icon: const Icon(Icons.backspace_outlined),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 1.h,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                    child: Text(
                      "Upload front-side of address proof. Name \n and address should be clearly visible.",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    width: 450.w,
                    height: 200.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://hindi.cdn.zeenews.com/hindi/sites/default/files/styles/zm_700x400/public/2021/10/03/936734-aadhaar-card.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(15.h),
                        width: 150.w,
                        height: 41.h,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Use from Gallery",
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          style: ElevatedButton.styleFrom(
                            // primary: Color()
                          ),
                        ),
                      ),
                      Container(
                        width: 150.w,
                        height: 41.h,
                        margin: EdgeInsets.all(15),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Click photo",
                                style: TextStyle(fontSize: 15.sp))),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          );
        });
  });
}
uploadPANBottomSheet(BuildContext context) {
  Future.delayed(const Duration(seconds: 0)).then((_) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.backspace_outlined),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          "PAN Card ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22.sp),
                        ),

                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 1.h,
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                      child: const TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.highlight_remove),
                            hintText: 'DIJPG1949C'),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                      child: const TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.highlight_remove),
                            labelText: 'Full name',
                            hintText: 'Amol uttam gorkhe'),
                      )),
                  Container(
                    width: 450.w,
                    height: 200.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://5.imimg.com/data5/TP/US/MU/SELLER-51778781/pan-card-500x500.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                    child: Text(
                      "Before Saving, Please make sure that the above.\n"
                          "information is correct.",
                      style: TextStyle(
                        color: Colors.blue,
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(15.h),
                        width: 150.w,
                        height: 41.h,
                        child: ElevatedButton(
                          onPressed: () {Navigator.pop(context);},
                          child: Text(
                            "Cancel",
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          style: ElevatedButton.styleFrom(
                            // primary: Color()
                          ),
                        ),
                      ),
                      Container(
                        width: 150.w,
                        height: 41.h,
                        margin: EdgeInsets.all(15),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Save",
                                style: TextStyle(fontSize: 15.sp))),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          );
        });
  });
}