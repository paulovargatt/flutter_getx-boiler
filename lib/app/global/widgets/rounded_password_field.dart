import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/global/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final ctrl;
  bool showPass;

  final changeButtonPass;

  RoundedPasswordField({
    this.showPass = false,
    required VoidCallback this.changeButtonPass, 
    required this.ctrl,
    required this.onChanged, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: ctrl,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Insira uma senha válida';
          }
          if (value.length < 5) {
            return 'Insira 6 caracteres ou mais';
          }
          return null;
        },
        obscureText: !showPass,
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
            onPressed: changeButtonPass,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
