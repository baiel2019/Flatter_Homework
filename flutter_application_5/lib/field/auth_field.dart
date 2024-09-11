
import 'package:flutter/material.dart';


class AuthField extends StatelessWidget {
  const AuthField({super.key, this.text, required this.controller, required this.isPassword,});
final text;
final controller;

final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: Colors.black)),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: Colors.black)),
          errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: Colors.red)),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: Colors.red)),
      ),
              validator: (value) {
                if(isPassword == false){if ((value?.length ?? 0) < 9) {
                  return 'Very short email';
                }
                if(!(value?.contains('@') ?? false)){
                  return 'Doesnt have simbol @';
                }
                }

                if (isPassword == true) {
                  if((value?.length ?? 0) < 8){
                  return 'Your password short';
                }
                if (!(value?.contains(RegExp(r'[0-9]')) ?? false)) {
                  return 'In your password doesnt have number';
                }
                } 

                
                return null;
              },
            );
  }
}