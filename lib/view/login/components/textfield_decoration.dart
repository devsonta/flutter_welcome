import 'package:flutter/material.dart';

import '../../custom_widget/my_theme.dart';

class TextFieldDecoration extends StatelessWidget {
  const TextFieldDecoration({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        color: MyTheme.loginPageBoxColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
