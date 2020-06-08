import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/food_details.dart';
import 'package:food/model/food.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int selectedIndex = 0;
  final List<String> categories = [
    'Veg Dinner',
    'Non-Veg Dinner',
    'Meat Dinner',
    'Non-Meat Dinner'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFFEF9EE), //empty
        color: Color(0xFFFFCA60), //backGround
        buttonBackgroundColor: Color(0xFFFFCA60), //selected button
        items: <Widget>[
          Container(
            width: 50,
            height: 50,
            child: Center(
              child: Icon(
                Icons.local_pizza,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            child: Center(
              child: Icon(
                Icons.fastfood,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            child: Center(
              child: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            child: Center(
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            child: Center(
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFFFEF9EE),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Icon(
              Icons.menu,
              color: Color(0xFFFFCA60),
              size: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Choose The \nFood you love',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                fontFamily: 'lato',
                color: Color(0xFFFFCA60),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              width: double.infinity,
              height: 40,
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: index == selectedIndex
                              ? Color(0xFFFFCA60)
                              : Colors.white,
                          border: Border.all(
                            color: Color(0xFFFFCA60),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: index == selectedIndex
                                ? Colors.white
                                : Color(0xFFFFCA60),
                            fontSize: 16,
                            fontFamily: 'lato',
                            fontWeight: FontWeight.bold,
                            letterSpacing: .6,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: double.infinity,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * .65,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFFFFCA60).withOpacity(0.6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.search, color: Colors.white),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .50,
                              height: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'type your favourits',
                                  hintStyle: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFCA60),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.70,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                scrollDirection: Axis.horizontal,
                itemCount: foods.length,
                itemBuilder: (BuildContext context, index) {
                  final Food food = foods[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return foodDetails(food: food);
                      }));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: MediaQuery.of(context).size.width * 0.6,
                      width: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Hero(
                            tag: food.imageUrl,
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.34,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                image: DecorationImage(
                                  image: AssetImage(foods[index].imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            foods[index].title,
                            style: TextStyle(
                              fontFamily: 'lato',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF444444),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            child: Text(
                              foods[index].description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Text(
                            '1Person per plate',
                            style: TextStyle(
                              color: Color(0xFF404040),
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Just',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFCA60),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                foods[index].price,
                                style: TextStyle(
                                  color: Color(0xFFFFAC60),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
