import 'package:flutter/material.dart';
import 'package:welcome_loginsignup_dashboard/view/custom_widget/my_theme.dart';
import 'package:welcome_loginsignup_dashboard/view/login/login_page.dart';

import 'components/background.dart';
import 'components/custom_button.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({
    Key? key,
  }) : super(key: key);

  loginButtonClickHandler(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (builder) => LoginPage()));
  }

  signButtonClickHandler() {
    print('Sign Button Click');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Code Algo Family',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'assets/images/undraw_Balloons.png',
                width: size.width * 0.7,
              ),
              CustomButton(
                buttonColor: MyTheme.loginButtonColor,
                buttontext: 'LOGIN',
                textColor: Colors.white,
                handleButtonClick: () => loginButtonClickHandler(context),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                buttonColor: MyTheme.singupButtonColor,
                buttontext: 'SIGNUP',
                textColor: Colors.black,
                handleButtonClick: signButtonClickHandler,
              )
            ],
          ),
        ),
      ),
    );
  }
}
