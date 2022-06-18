import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectCityScreen extends StatefulWidget {
  const SelectCityScreen({Key? key}) : super(key: key);

  @override
  State<SelectCityScreen> createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  List<Map> availableCities = [
    {"name": "Bangalore", "isChecked": false},
    {"name": "Gurgaon", "isChecked": false},
    {"name": "Mumbai", "isChecked": false},
    {"name": "Pune", "isChecked": false},
    {"name": "Noida", "isChecked": false},
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
                Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select city",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
                      ),
                      IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.backspace_outlined))
                    ],
                  ),
                ),
                const Divider(
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
                          const TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search your city",
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide())),
                          ),
                          // The checkboxes will be here
                          Column(
                              children: availableCities.map((city) {
                            return Container(
                                margin: EdgeInsets.only(top: 7.h),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent)),
                                child: CheckboxListTile(
                                    value: city["isChecked"],
                                    title: Text(city["name"]),
                                    onChanged: (newValue) {
                                      setState(() {
                                        city["isChecked"] = newValue;
                                      });
                                    }));
                          }).toList()),
                        ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 18.w),
                  width: MediaQuery.of(context).size.width,
                  height: 41.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            // primary: Color()
                            ),
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            // primary: Color()
                            ),
                        child: Text(
                          "Continue",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ],
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
