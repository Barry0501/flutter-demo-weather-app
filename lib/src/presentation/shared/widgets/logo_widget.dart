import 'package:flutter/material.dart';

import '../../../utils/uidata.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(UIData.logo);
  }
}
