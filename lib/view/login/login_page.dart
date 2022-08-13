import 'package:flutter/material.dart';

import 'components/login_background.dart';
import 'components/textfield_decoration.dart';
import 'components/userId_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  TextEditingController useridController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String userIdErrorText = 'User Id can not be empty';
  String userIdHintText = 'Enter User Id';
  Color userIdHintTextColor = Colors.purple;
  IconData useridTextFieldPrefixIcon = Icons.person;
  Color useridTextFieldPrefixIconColor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Login.png',
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldDecoration(
                      child: UserIdTextField(
                        useridController: useridController,
                        userIdErrorText: userIdErrorText,
                        userIdHintText: userIdHintText,
                        userIdHintTextColor: userIdHintTextColor,
                        useridTextFieldPrefixIcon: useridTextFieldPrefixIcon,
                        useridTextFieldPrefixIconColor:
                            useridTextFieldPrefixIconColor,
                        onUseridValueChange: (value) {
                          print('=>' + value);
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class UserIdTextField extends StatelessWidget {
//   const UserIdTextField({
//     Key? key,
//     required this.useridController,
//     required this.userIdErrorText,
//     required this.userIdHintText,
//     required this.userIdHintTextColor,
//     required this.useridTextFieldPrefixIcon,
//     required this.useridTextFieldPrefixIconColor,
//   }) : super(key: key);

//   final TextEditingController useridController;
//   final String userIdErrorText;
//   final String userIdHintText;
//   final Color userIdHintTextColor;
//   final IconData useridTextFieldPrefixIcon;
//   final Color useridTextFieldPrefixIconColor;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: useridController,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return userIdErrorText;
//         } else {
//           return null;
//         }
//       },
//       decoration: InputDecoration(
//         hintText: userIdHintText,
//         hintStyle: TextStyle(
//           color: userIdHintTextColor,
//         ),
//         border: InputBorder.none,
//         prefixIcon: Icon(
//           useridTextFieldPrefixIcon,
//           color: useridTextFieldPrefixIconColor,
//         ),
//       ),
//     );
//   }
// }

// class TextFieldDecoration extends StatelessWidget {
//   const TextFieldDecoration({
//     Key? key,
//   }) : super(key: key);

//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       width: size.width * 0.8,
//       margin: const EdgeInsets.symmetric(vertical: 15),
//       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
//       decoration: BoxDecoration(
//         color: MyTheme.loginPageBoxColor,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       // child: TextFormField(
//       //   controller: useridController,
//       //   validator: (value) {
//       //     if (value!.isEmpty) {
//       //       return userIdErrorText;
//       //     } else {
//       //       return null;
//       //     }
//       //   },
//       //   decoration: InputDecoration(
//       //     hintText: userIdHintText,
//       //     hintStyle: TextStyle(
//       //       color: userIdHintTextColor,
//       //     ),
//       //     border: InputBorder.none,
//       //     prefixIcon: Icon(
//       //       useridTextFieldPrefixIcon,
//       //       color: useridTextFieldPrefixIconColor,
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }
