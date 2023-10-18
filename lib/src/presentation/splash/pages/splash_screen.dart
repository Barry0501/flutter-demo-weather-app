import 'package:flutter/material.dart';

import '../../home/pages/home_page.dart';
import '../../shared/widgets/backgroud_widget.dart';
import '../../shared/widgets/loading_indicator_widget.dart';
import '../../shared/widgets/logo_widget.dart';

class SpashScreen extends StatefulWidget {
  static const String routeName = '/';
  const SpashScreen({super.key});

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  @override
  void initState() {
    navigateToOnBoardingViewOrHomeView();
    super.initState();
  }

  void navigateToOnBoardingViewOrHomeView() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      return Navigator.pushReplacementNamed(context, HomePage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 40, bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoWidget(),
                LoadingIndicatorWidget(strokeWidth: 3.5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
