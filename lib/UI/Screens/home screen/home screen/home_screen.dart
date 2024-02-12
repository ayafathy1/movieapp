
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/UI/Screens/Profile%20Screen/profile_screen.dart';
import 'package:movieapp/UI/Screens/home%20screen/home%20screen%20controller/home_screen_controller.dart';
import 'package:movieapp/UI/Screens/home%20screen/widget/box_image.dart';
import 'package:movieapp/UI/Screens/movie_screen/movie_screen.dart';
import 'package:movieapp/UI/Screens/tv_screen/tv_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List listview = [
      {"image": "assets/images/Madaari Movie Review 1 (1).png"},
      {"image": "assets/images/mytripmovie.png"},
      {"image": "assets/images/Carteles _Interstellar_ 1.png"},
    ];

    return GetBuilder(
        init: HomeScreenController(),
        builder: (HomeScreenController controller )
    {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: Get.width,
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Movie Suggestion.png'))),
              child: Stack(
                children: [
                  Align(
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(onPressed: (){},
                          icon:Image(image: AssetImage('assets/images/Group 5.png'))),
                    ),
                  ),
                  Align(
                    child: Container(
                      alignment: Alignment.topRight,
                      child: IconButton(onPressed: (){},
                          icon:Image(image: AssetImage('assets/images/Vector.png'))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Movie',
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 25),
                  ),
                  InkWell(
                      onTap: () {

                        Get.to(() => const MovieScreen());
                      },
                      child: Text(
                        'see all',
                        style:
                        TextStyle(color: Colors.grey.shade500, fontSize: 20),
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listview.length,
                itemBuilder: (BuildContext context, int index) {
                  return BoxImage(
                    listview: listview,
                    index: index,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TV',
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 25),
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => const TvScreen());
                      },
                      child: Text(
                        'see all',
                        style:
                        TextStyle(color: Colors.grey.shade500, fontSize: 20),
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listview.length,
                itemBuilder: (BuildContext context, int index) {
                  return BoxImage(
                    listview: listview,
                    index: index,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 9,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.grey.shade700,
                      size: 30,
                    )),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey.shade700,
                    size: 30,
                  )),
              // Image.asset('assets/images/noun-download-1220574.png',scale: 20,color: Colors.grey.shade700,),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.download,
                    color: Colors.grey.shade700,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_border_outlined,
                    color: Colors.grey.shade700,
                    size: 30,
                  )),
              IconButton(
                onPressed: () {
                  Get.to(()=>const ProfileScreen());
                },
                icon: Icon(
                  Icons.person_outlined,
                  color: Colors.grey.shade700,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      );
    }
    );
  }
}
