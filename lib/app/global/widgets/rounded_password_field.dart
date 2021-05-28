import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/global/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({required this.onChanged});

  @override
  Widget build(BuildContext context) {
    bool showPassword = true;

    return TextFieldContainer(
      child: TextField(
        obscureText: showPassword,
        onChanged: onChanged,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
          icon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.visibility,
              color: Colors.white,
            ),
            onPressed: () => {
              showPassword = !showPassword
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
