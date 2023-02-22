import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageList = [
    "assets/images/icon.png",
    "assets/images/icon.png",
    "assets/images/icon.png",
    "assets/images/icon.png",
    "assets/images/icon.png"
  ];
  List<String> categoryList = [
    "غذای سنتی",
    "فست فود",
    "نوشیدنی",
    "دسر",
    "پیش غذا"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/images/icon.png",
            width: 60,
            fit: BoxFit.scaleDown,
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "رستوران من",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  itemCount: imageList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          imageList[index],
                          width: 90,
                          fit: BoxFit.scaleDown,
                        ),
                        Text(categoryList[index])
                      ],
                    ));
                  }),
            ),
          ],
        ));
  }
}
