import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.controller,
    required this.onChanged,
    required this.validator,
    required this.keyboardType,
    required this.isPassField,
    required this.textFieldTitle,
  }):super(key: key);
  final TextEditingController controller;
  final Function(String) onChanged;
  final String?Function(String?) validator;
  final TextInputType keyboardType;
  final bool isPassField;
  final String textFieldTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    child: TextFormField(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    controller: controller,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
    color: Colors.grey.shade600,
    width: 3
    )
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(
    color: Colors.black,
    width: 2
    )
    ),
    errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(
    color: Colors.red,
    width: 3
    )
    ),
    labelText: textFieldTitle,
    labelStyle: const TextStyle(color: Colors.black54)
    ),
    autocorrect: false,
    enableSuggestions: false,
    obscureText: isPassField,
    onChanged:onChanged,
    onFieldSubmitted: (e) {
    print(e);
    print("on field submitted is activated");
    },
    onSaved: (e) {
    print(e);
    print("on saved is activated");
    },
    validator:validator ,

    keyboardType: keyboardType
    ),
    ),
    ],
    );
    }
}
