import 'package:delivery_app/views/components/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(1.h),
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
                      "Create your account",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.sp),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          // primary: Color()
                          ),
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
                child: Container(
                  padding: EdgeInsets.fromLTRB(5.w, 5.h, 15.w, 5.h),
                  height: MediaQuery.of(context).size.width * 0.15,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[50],
                  ),
                  child: Text(
                    "Create your account and earn up to \n"
                    "21000 every month!",
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 5.h),
                  child: Expanded(
                    child: Stepper(
                      type: stepperType,
                      physics: ScrollPhysics(),
                      currentStep: _currentStep,
                      onStepTapped: (step) => tapped(step),
                      onStepContinue: continued,
                      onStepCancel: cancel,
                      steps: <Step>[
                        Step(
                          title: Text('Vehicle, locality and shift'),
                          subtitle: Text('Vehicle, locality and shift'),
                          content: Column(
                            children: <Widget>[

                            ],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep >= 0
                              ? StepState.complete
                              : StepState.disabled,
                        ),
                        Step(
                          title: Text('Personal Information'),
                          subtitle: Text('Personal Information'),
                          content: Column(
                            children: <Widget>[],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep >= 1
                              ? StepState.complete
                              : StepState.disabled,
                        ),
                        Step(
                          title: Text('Click profile photo'),
                          subtitle: Text('Click profile photo'),
                          content: Column(
                            children: <Widget>[],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep >= 2
                              ? StepState.complete
                              : StepState.disabled,
                        ),
                        Step(
                          title: Text('Add t-shirt size'),
                          subtitle: Text('Add t-shirt size'),

                          content: Column(
                            children: <Widget>[],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep >= 3
                              ? StepState.complete
                              : StepState.disabled,
                        ),
                        Step(
                          title: Text('Pay onboarding fees'),
                          subtitle: Text('Pay onboarding fees'),
                          content: Column(
                            children: <Widget>[],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep >= 4
                              ? StepState.complete
                              : StepState.disabled,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.h),
                width: 400.w,
                height: 41.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Create your account",
                    style: TextStyle(
                        fontSize: 17.sp, fontWeight: FontWeight.normal),
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

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 4 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
