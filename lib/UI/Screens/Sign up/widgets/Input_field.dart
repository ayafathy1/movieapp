import 'package:flutter/material.dart';
import 'package:movieapp/UI/Screens/Sign%20up/widgets/textform1.dart';
import 'package:movieapp/UI/Screens/Sign%20up/widgets/textform2.dart';
import 'package:movieapp/UI/Screens/Sign%20up/widgets/textform3.dart';
import 'package:movieapp/UI/Screens/Sign%20up/widgets/textform4.dart';
import 'TextFormFeild.dart';

class InputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 1,right: 300),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.white)
                    )
                ),
              ),
              SizedBox(height: 1,),
              TextForm4(),
              Text(
                'Email                                                                        ',
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 1,),
              TextFormFeild(),
              Text(
                'phone no                                                                  ',
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 1,),
              TextForm1(),
              Text(
                'password                                                                 ',
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 1,),
              TextForm2(),
              Text(
                '    confirm password                                                                 ',
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 1,),
              TextForm3(),
            ],
            ),
        );
    }
}
