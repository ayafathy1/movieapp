import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movieapp/UI/Screens/Trending/widget/box_widget.dart';


class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List listview = [
      {
        "title": "   Madaari",
        "date": "   2016",
        "genere": "Genere:Drama,Thriller,Action",
        "image": "assets/images/Madaari Movie Review 1.png"
      },

      {
        "title": "   My Trip",
        "date": "   2019",
        "genere": "Genere:Action,Drama,Thriller",
        "image": "assets/images/mytripmovie.png"
      },

      {
        "title": "  Interstaller",
        "date": "2014",
        "genere": "Genere:Adventure,Drama,SCI-FI",
        "image": "assets/images/Carteles _Interstellar_ 1.png"
      },

      {
        "title": " Openhimmer",
        "date": "2023",
        "genere": "Genere:History,Drama,Biography",
        "image": "assets/images/oppenhimer.png"
      },

    ];
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Color(0xffDEE4E7),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  IconButton(onPressed: () {
                    // Get.to(WelcomeScreen());
                  }, icon: Icon(Icons.arrow_back), color: Color(0xff0A0A0A),),
                  Text("Top Rated", style: TextStyle(color: Color(0xff0A0A0A),
                      fontWeight: FontWeight.w400,
                      fontSize: 24),),
                  SizedBox(width: 180,),
                  IconButton(onPressed: () {},
                      icon: Image(
                          image: AssetImage('assets/images/searchIcon.png'))),
                ],
              ),
              Center(
                child: Container(
                  height: 900,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        itemCount: listview.length,
                        itemBuilder: (_, index) {
                          return Box(listview: listview, index: index,);
                        }
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

}