import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeetionary_flutter/utils/colors.dart';
import 'package:zeetionary_flutter/utils/global_variable.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is web'),
      ),
    );
  }
}
