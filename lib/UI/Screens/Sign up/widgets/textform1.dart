import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextForm1 extends StatelessWidget {
  const TextForm1 ({super.key});

  @override
  Widget build(BuildContext context) =>
      Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.white)
              )
          ),
          child: TextField(
              style: TextStyle(fontSize: 5),
              decoration: InputDecoration(
                  labelText: "Enter your phone number",
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
                  )
              )
              )
          )
      ;
}