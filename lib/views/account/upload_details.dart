import 'package:delivery_app/views/components/widgets/upload_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadDetailsScreen extends StatefulWidget {
  const UploadDetailsScreen({Key? key}) : super(key: key);

  @override
  State<UploadDetailsScreen> createState() => _UploadDetailsScreenState();
}

class _UploadDetailsScreenState extends State<UploadDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){uploadAadharBottomSheet(context);}, child: Text("Upload Aadhar")),
            ElevatedButton(onPressed: (){uploadPANBottomSheet(context);}, child: Text("Upload PAN")),
          ],
        ),
      ),
    );
  }




}
