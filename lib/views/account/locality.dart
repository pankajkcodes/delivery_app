import 'package:delivery_app/views/components/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocalityAndSiftScreen extends StatefulWidget {
  const LocalityAndSiftScreen({Key? key}) : super(key: key);

  @override
  State<LocalityAndSiftScreen> createState() => _LocalityAndSiftScreenState();
}

class _LocalityAndSiftScreenState extends State<LocalityAndSiftScreen> {
  List<Map> availableVehicle = [
    {"name": "Bike", "isChecked": false},
    {"name": "Cycle", "isChecked": false},
    {"name": "Ecycle", "isChecked": false},
    {"name": "Other vehicle", "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.86,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.backspace_outlined)),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                      child: Text(
                        "Locality and shift",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.sp),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  height: 2.h,
                ),
                // CheckboxListTile(title: Text(values[0]),value: true, onChanged: (bool? checkBoxState){})
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(20.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // The checkboxes will be here
                          Column(
                            children: availableVehicle.map((vehicle) {
                              return Container(
                                  margin: EdgeInsets.only(top: 5.h),
                                  child: CheckboxListTile(
                                      value: vehicle["isChecked"],
                                      title: Text(vehicle["name"]),
                                      subtitle: Text(vehicle["name"]),
                                      onChanged: (newValue) {
                                        setState(() {
                                          vehicle["isChecked"] = newValue;
                                        });
                                      }),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blueAccent)));
                            }).toList(),
                          ),
                        ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.h),
                  width: 400.w,
                  height: 41.h,
                  child: ElevatedButton(
                    onPressed: () {
                      myFullBottomSheet(
                          context, showVehicleConformation(context));
                    },
                    child: Text(
                      "Proceed",
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
      ),
    );
  }
}

Widget showVehicleConformation(BuildContext context) {
  return SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(5.w, 5.h, 15.w, 5.h),
          child: Text(
            "Vehicle confirmation",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
          ),
        ),
        Divider(color: Colors.grey,height: 2.h,),
        Padding(
          padding: EdgeInsets.fromLTRB(5.w, 15.h, 5.w, 5.h),
          child: Text(
            "You have opted in for Other vehicle\n",
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
          child: Text(
            "You confirm that the vehicle you are \n using for delivery service does not require\n"
            "a driving license",
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(5.w, 15.h, 5.w, 5.h),
          child: Text(
            "Delivery App reserve the right to suspend your account \n in information provided by you is found to be\n"
            "incorrect",
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Colors.lightBlue),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5.w),
          width: 400.w,
          height: 41.h,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Proceed with Other vehicle",
              style: TextStyle(fontSize: 15.sp),
            ),
            style: ElevatedButton.styleFrom(
                // primary: Color(Colors.lightBlue)
                ),
          ),
        ),
        Container(
          width: 400.w,
          height: 41.h,
          margin: EdgeInsets.all(5.w),
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel", style: TextStyle(fontSize: 15.sp))),
        ),
      ],
    ),
  );
}
