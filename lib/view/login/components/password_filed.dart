import 'package:flutter/material.dart';

class UserPassTextField extends StatefulWidget {
  const UserPassTextField({
    Key? key,
    required this.userPassController,
    required this.userPassErrorText,
    required this.userPassHintText,
    required this.userPassHintTextColor,
    required this.userPassTextFieldPrefixIcon,
    required this.userPassTextFieldPrefixIconColor,
    required this.onPassValueChange,
    required this.suffixIcon,
    required this.suffixIconColor,
  }) : super(key: key);

  final TextEditingController userPassController;
  final String userPassErrorText;
  final String userPassHintText;
  final Color userPassHintTextColor;
  final IconData userPassTextFieldPrefixIcon;
  final Color userPassTextFieldPrefixIconColor;
  final IconData suffixIcon;
  final Color suffixIconColor;
  final Function onPassValueChange;

  @override
  State<UserPassTextField> createState() => _UserPassTextFieldState();
}

class _UserPassTextFieldState extends State<UserPassTextField> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.userPassController,
      validator: (value) {
        if (value!.isEmpty) {
          return widget.userPassErrorText;
        } else {
          return null;
        }
      },
      onChanged: (value) {
        widget.onPassValueChange(value);
      },
      cursorColor: Theme.of(context).colorScheme.secondary,
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      obscureText: isPasswordVisible ? false : true,
      decoration: InputDecoration(
        hintText: widget.userPassHintText,
        hintStyle: TextStyle(
          color: widget.userPassHintTextColor,
        ),
        border: InputBorder.none,
        prefixIcon: Icon(
          widget.userPassTextFieldPrefixIcon,
          color: widget.userPassTextFieldPrefixIconColor,
        ),
        suffixIcon: IconButton(
          icon: isPasswordVisible
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
          color: widget.suffixIconColor,
          onPressed: () {
            print('Hello');
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
        ),
      ),
    );
  }
}
