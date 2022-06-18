import 'package:flutter/material.dart';

class MainOnboardingScreen extends StatefulWidget {
  const MainOnboardingScreen({Key? key}) : super(key: key);

  @override
  State<MainOnboardingScreen> createState() => _MainOnboardingScreenState();
}

class _MainOnboardingScreenState extends State<MainOnboardingScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: const <Widget>[
            Center(
              child: Text('First Page'),
            ),
            Center(
              child: Text('Second Page'),
            ),
            Center(
              child: Text('Third Page'),
            )
          ],
        ),
      ),
    );
  }
}

class OnboardStep extends StatelessWidget {
  final Widget? image;
  final List<Widget> children;

  OnboardStep(
    this.children, {
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade200,
      child: Column(
        children: [
          if (image != null)
            Expanded(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 10,
                    child: image!,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              flex: 2, // occupy 2/3 of available space
            ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children,
                ),
              ),
              flex: 1 // occupy 1/3 of available space,
              ),
        ],
      ),
    );
  }
}
