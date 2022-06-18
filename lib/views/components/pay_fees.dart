import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayOnboardingScreen extends StatefulWidget {
  const PayOnboardingScreen({Key? key}) : super(key: key);

  @override
  State<PayOnboardingScreen> createState() => _PayOnboardingScreenState();
}

class _PayOnboardingScreenState extends State<PayOnboardingScreen> {
  List<Map> availablePayments = [
    {"name": "Pay full 1280 now (Save 320)", "isChecked": true},
    {"name": "Pay 1600 (600 now, 1000\n later )", "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
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
                      "Pay onboarding fees ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22.sp),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 2.h,
              ),
              ListTile(
                leading: Image(
                  image: NetworkImage(
                      "https://www.apkmirror.com/wp-content/uploads/2021/03/39/6053658d90e84.png"),
                ),
                title: Text("Onboarding fee is a \none-time fee paid to be \n"
                    "on boarded with Zomato"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                child: Text(
                  "Here what you get after joining",
                  style: TextStyle(
                      fontSize: 15.sp, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.trending_up_rounded),
                      title: Text(
                        "Get insurance coverage upto 1000000",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.trending_up_rounded),
                      title: Text(
                        "Get Zomato T-Shirt & Bag",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              // CheckboxListTile(title: Text(values[0]),value: true, onChanged: (bool? checkBoxState){})
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // The checkboxes will be here
                        Column(
                            children: availablePayments.map((payment) {
                          return Container(
                            padding: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 5.h),
                            margin: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 5.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5.w)),
                                border: Border.all(color: Colors.grey)),
                            child: CheckboxListTile(
                                value: payment["isChecked"],
                                title: Text(payment["name"]),
                                onChanged: (newValue) {
                                  setState(() {
                                    payment["isChecked"] = newValue;
                                  });
                                }),
                          );
                        }).toList()),
                      ]),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text(
                      "100 % Safe & Secure",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
