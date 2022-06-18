import 'package:delivery_app/views/account/upload_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.backspace_outlined)),
                  Text(
                    "Personal Details",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: const TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.highlight_remove),
                        labelText: 'Name',
                        hintText: 'Name'),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: const TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.highlight_remove),
                        labelText: 'Father Name',
                        hintText: 'Father Name'),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: const TextField(
                    decoration: InputDecoration(
                        suffixIcon:  Icon(Icons.highlight_remove),
                        labelText: 'Date of Birth',
                        hintText: 'Date of Birth'),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
                child: ListTile(

                  title: Text(
                    "Gender",
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_drop_down_sharp),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                child: Container(
                  padding: EdgeInsets.fromLTRB(10.w, 15.h, 10.w, 15.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.w)),
                      border: Border.all(color: Colors.grey)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UploadDetailsScreen()));
                    },
                    child: Text(
                      "Upload Address Proof (Licence / Aadhar / Voter \n"
                      "ID / Passport )",
                      style:
                          TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
                child: ListTile(
                  title: Text(
                    "Current Address",
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: const TextField(
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.highlight_remove),
                        labelText: 'Address 1',
                        hintText: 'Address 1'),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: const TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.highlight_remove),
                        labelText: 'Address 2',
                        hintText: 'Address 2'),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: const TextField(
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.highlight_remove),
                        labelText: 'City',
                        hintText: 'District / City'),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: const TextField(
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.highlight_remove),
                        labelText: 'State',
                        hintText: 'Enter State'),
                  )),
              Container(
                margin: EdgeInsets.all(15.h),
                width: 400.w,
                height: 41.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
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
    ));
  }
}
