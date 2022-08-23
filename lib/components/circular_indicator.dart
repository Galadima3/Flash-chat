import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CircularIndicatorPage extends StatefulWidget {
  const CircularIndicatorPage({Key? key}) : super(key: key);

  

  @override
  State<CircularIndicatorPage> createState() => _CircularIndicatorPageState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _CircularIndicatorPageState extends State<CircularIndicatorPage>
    with TickerProviderStateMixin {
  // late AnimationController controller;

  // @override
  // void initState() {
  //   controller = AnimationController(
  //     vsync: this,
  //     duration: const Duration(seconds: 5),
  //   )..addListener(() {
  //       setState(() {});
  //     });
  //   controller.repeat(reverse: true);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 50.0,
          controller: AnimationController(
            vsync: this,
          ),
        ),
      ),
    );
  }
}
