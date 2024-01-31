import 'package:flutter/material.dart';
import '../../../../Widgets/custom_button_widget.dart';
import 'Input_field.dart';
import 'button.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 10,),
                Container(

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: InputField(),
                ),
                SizedBox(height: 5,),
                Custombutton(),
                Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Already have an account? sign in',
                        style: TextStyle(fontSize: 15,color: Colors.black),
                      ),
                    )),

              ],
            ),
            ),
        );
    }
}