import 'package:flutter/material.dart';
import 'package:food/model/food.dart';

class foodDetails extends StatefulWidget {
  final Food food;

  foodDetails({this.food});
  @override
  _foodDetailsState createState() => _foodDetailsState();
}

class _foodDetailsState extends State<foodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width * .74,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFFAC60),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width * .68,
                width: MediaQuery.of(context).size.width * .80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  image: DecorationImage(
                      image: AssetImage(widget.food.imageUrl),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(widget.food.imageUrl),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 4.0),
                              blurRadius: 10,
                            )
                          ]),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(widget.food.imageUrl),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 4.0),
                              blurRadius: 10,
                            )
                          ]),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(widget.food.imageUrl),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 4.0),
                              blurRadius: 10,
                            )
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'lunch & dinner / monthly Dinner',
              style: TextStyle(
                color: Color(0xFF707070),
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12),
            child: Text(
              'Monthly Dinner',
              style: TextStyle(
                color: Color(0xFF404040),
                fontWeight: FontWeight.bold,
                fontSize: 25,
                letterSpacing: 1.1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 12,
            ),
            child: Text(
              '\$1.399 & 1.000.00',
              style: TextStyle(
                color: Color(0xFF707070),
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Only For Bhubaneswar, odisho, india',
              style: TextStyle(fontSize: 16, color: Color(0xFF707070)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      )
                    ],
                    color: Colors.amberAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        '-',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        '1',
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      Text(
                        '+',
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amberAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Text(
                    'Bugnow',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
