import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hikking/data/dummy.dart';

class CategoryPage extends StatelessWidget {
  final String title;

  const CategoryPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios_rounded),
                          Text(
                            title,
                            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage("http://lorempixel.com/400/600/nature"),
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(color: Colors.pink, image: DecorationImage(image: AssetImage("images/map.png"), fit: BoxFit.cover)),
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Check nearby activities",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.place,
                      color: Colors.blue,
                      size: 82,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget buildEntry(EntryItem e) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: CategoryItem(),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.10), spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              height: 90,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://picsum.photos/400",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Title",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        "4,5",
                        style: TextStyle(fontSize: 12, color: Color(0xff989898)),
                      ),
                    ),
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
                SizedBox(height: 8),
                Expanded(
                  child: Text(
                    "Unlock your full potential with our hiking tour. Explore the best hiking sights with us!!",
                    style: TextStyle(color: Color(0xff989898), fontSize: 10),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
