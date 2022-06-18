import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<Map> availableLanguage = [
    {"name": "English", "isChecked": false},
    {"name": "Hindi", "isChecked": false},
    {
      "name": "Telugu",
      "isChecked": false,
    },
    {"name": "Kannada", "isChecked": false},
    {"name": "Tamil", "isChecked": false},
    {"name": "Malayalam", "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*0.86,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: Text(
                    "Select language",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22.sp),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 1,
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
                              children: availableLanguage.map((language) {
                                return CheckboxListTile(
                                    value: language["isChecked"],
                                    title: Text(language["name"]),
                                    onChanged: (newValue) {
                                      setState(() {
                                        language["isChecked"] = newValue;
                                      });
                                    });
                              }).toList()),


                        ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.h),
                  width: 400.w,
                  height: 41.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Continue",style: TextStyle(fontSize: 15.sp),),
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

  // @override
  // void initState() {
  //   Future.delayed(const Duration(seconds: 0)).then((_) {
  //     showModalBottomSheet(
  //         context: context,
  //         builder: (builder) {
  //           return SingleChildScrollView(
  //             child: Container(
  //               height: MediaQuery.of(context).size.height*0.86,
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 mainAxisSize: MainAxisSize.max,
  //                 children: <Widget>[
  //                   Padding(
  //                     padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
  //                     child: Text(
  //                       "Select language",
  //                       style: TextStyle(
  //                           fontWeight: FontWeight.bold, fontSize: 22.sp),
  //                     ),
  //                   ),
  //                   Divider(
  //                     color: Colors.grey,
  //                     height: 1,
  //                   ),
  //                   // CheckboxListTile(title: Text(values[0]),value: true, onChanged: (bool? checkBoxState){})
  //                   SingleChildScrollView(
  //                     child: Padding(
  //                       padding: const EdgeInsets.all(20),
  //                       child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //
  //
  //                             // The checkboxes will be here
  //                             Column(
  //                                 children: availableLanguage.map((language) {
  //                               return CheckboxListTile(
  //                                   value: language["isChecked"],
  //                                   title: Text(language["name"]),
  //                                   onChanged: (newValue) {
  //                                     setState(() {
  //                                       language["isChecked"] = newValue;
  //                                     });
  //                                   });
  //                             }).toList()),
  //
  //
  //                           ]),
  //                     ),
  //                   ),
  //                   Container(
  //                     margin: EdgeInsets.all(15.h),
  //                     width: 400.w,
  //                     height: 41.h,
  //                     child: ElevatedButton(
  //                       onPressed: () {},
  //                       child: Text("Continue",style: TextStyle(fontSize: 15.sp),),
  //                       style: ElevatedButton.styleFrom(
  //                         // primary: Color()
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           );
  //         });
  //   });
  //   super.initState();
  // }
}
