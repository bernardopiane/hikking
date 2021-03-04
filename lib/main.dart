import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hikking/pages/category.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Trending activities nearby",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://via.placeholder.com/150"),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              items: [
                CarouselItem(),
                CarouselItem(),
                CarouselItem(),
                CarouselItem(),
                CarouselItem(),
              ],
              options: CarouselOptions(
                viewportFraction: 0.8,
                height: 320,
                enlargeCenterPage: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "All destinations",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            _buildCategories(context),
          ],
        ),
      ),
    );
  }

  _buildCategories(context) {
    const height = 72.0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => CategoryPage(title: "Mountains")),
                );
              },
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network("http://lorempixel.com/400/200/nature/", fit: BoxFit.cover),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Text(
                        "Mountain",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => CategoryPage(title: "Coast")),
                );
              },
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network("http://lorempixel.com/400/200/nature/", fit: BoxFit.cover),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Text(
                        "Coast",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => CategoryPage(title: "River")),
                );
              },
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network("http://lorempixel.com/400/200/nature/", fit: BoxFit.cover),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Text(
                        "River",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => CategoryPage(title: "Forest")),
                );
              },
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network("http://lorempixel.com/400/200/nature/", fit: BoxFit.cover),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Text(
                        "Forest",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMaterialModalBottomSheet(
            expand: true,
            context: context,
            builder: (context) => SafeArea(
                  child: Stack(
                    children: [
                      Image.network(
                        "http://lorempixel.com/400/600/nature",
                        fit: BoxFit.cover,
                        height: double.infinity,
                      ),
                      BlackGradient(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 16),
                              Center(
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    size: 32,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Container(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "TRENDING",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Difficulty level: Dificult",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 16),
                                RatingBarIndicator(
                                  rating: 4.5,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 12.0,
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Mi tempus imperdiet nulla malesuada pellentesque. Feugiat in ante metus dictum at tempor commodo ullamcorper. Pellentesque id nibh tortor id. Aliquet risus feugiat in ante metus. Lacus vestibulum sed arcu non odio euismod',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 16),
                                Center(
                                  child: CupertinoButton(
                                    color: Colors.blue,
                                    onPressed: () {},
                                    child: Text("REGISTER NOW"),
                                  ),
                                ),
                                SizedBox(height: 32),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ));
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.network("http://lorempixel.com/400/600/nature", fit: BoxFit.cover),
            ),
          ),
          // BlackGradient(),
          // Positioned.fill(child: BlackGradient()),
          Positioned(
            top: 32,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Text(
                'TRENDING',
                style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 12),
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width / 1.4,
            left: MediaQuery.of(context).size.width / 24,
            bottom: 16,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dificulty: ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Text(
                            "4.5",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          RatingBarIndicator(
                            rating: 4.5,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 12.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lobortis facilisis lectus, non luctus magna ullamcorper "
                    "non",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BlackGradient extends StatelessWidget {
  const BlackGradient({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0x00000000),
            const Color(0x00000000),
            const Color(0xdd000000),
          ],
        ),
      ),
    );
  }
}
