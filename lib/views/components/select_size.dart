import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


enum AvailableSize { S, M,L,XL }

class SelectSizeScreen extends StatefulWidget {
  const SelectSizeScreen({Key? key}) : super(key: key);


  @override
  State<SelectSizeScreen> createState() => _SelectSizeScreenState();
}

class _SelectSizeScreenState extends State<SelectSizeScreen> {


  @override
  Widget build(BuildContext context) {

    AvailableSize? size = AvailableSize.L;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      "Add t-shirt size",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 22.sp),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 2.h,
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                child: ListTile(
                  title: Text(
                    "Please select a t-shirt size",
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                  ),
                  trailing: Text(
                    "Size chart",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.green),
                  ),
                ),
              ),
          Column(
            children: <Widget>[
              ListTile(
                title:  Text("XL"),
                leading: Radio(
                  value: AvailableSize.M,
                  groupValue: size,
                  onChanged: (AvailableSize? value) {
                    setState(() {
                      size = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("S"),
                leading: Radio(
                  value: AvailableSize.XL,
                  groupValue: size,
                  onChanged: (AvailableSize? value) {
                    setState(() {
                      size = value;
                    });
                  },
                ),
              ),
              ListTile(
                title:  Text("2XL"),
                leading: Radio(
                  value: AvailableSize.S,
                  groupValue: size,
                  onChanged: (AvailableSize? value) {
                    setState(() {
                      size = value;
                    });
                  },
                ),
              ),
            ],
          ),

              // CheckboxListTile(title: Text(values[0]),value: true, onChanged: (bool? checkBoxState){})

              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(15.h),
                    width: 400.w,
                    height: 41.h,
                    child: Text("Please choose a delivery mode "),
                  ),

                ],
              ),
              ListTile(
                title:  Text("Home delivery"),
                leading: Radio(
                  value: AvailableSize.S,
                  groupValue: size,
                  onChanged: (AvailableSize? value) {
                    setState(() {
                      size = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.h),
                width: 400.w,
                height: 41.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  style: ElevatedButton.styleFrom(
                      // primary: Color()
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
