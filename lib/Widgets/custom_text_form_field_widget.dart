// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget{
  // ignore: non_constant_identifier_names
  const CustomTextFormFieldWidget({Key? key, required this.Controller, required this.validator, required this.keyboardType, required this.textfieldHint, required this.ispasswordField, required this.obscureText, required this.SuffixColor, required this.FillColor}) : super (key: key);

  // ignore: non_constant_identifier_names
  final TextEditingController Controller;
  final String? Function(String?) validator ;
  final TextInputType keyboardType ;
  final String textfieldHint;
  final bool ispasswordField;
  final bool obscureText ;
  // ignore: non_constant_identifier_names
  final Color SuffixColor;
  // ignore: non_constant_identifier_names
  final Color FillColor;
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(26.0),
        child: TextFormField(
          validator: validator,
            controller: Controller,
            obscureText: obscureText,
            obscuringCharacter: '*',
            cursorColor: Colors.black,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.email_outlined , color: SuffixColor,),
              hintText: textfieldHint,
              hintStyle: TextStyle(color: Colors.black , fontWeight: FontWeight.w300),
              fillColor: FillColor,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Colors.grey.shade600,
                      width: 3
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Colors.black,
                      width: 3
                  )
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.red,
                     width: 3
              )
            ),
              focusedErrorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.red,
                 width: 3
              )
        )  )));
  }

}