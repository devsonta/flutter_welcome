import 'package:flutter/material.dart';
import 'package:welcome_loginsignup_dashboard/view/custom_widget/my_theme.dart';

import 'view/welcome_page/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.darkTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home: const WelcomePage(),
    );
  }
}
