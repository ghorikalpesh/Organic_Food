import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  List name = [
    'Peach',
    'Basil',
    'Pumpkin',
    'Tomato',
  ];
  List cuntry = [
    'Spain',
    'Italy',
    'Ukraine',
    'Holland',
  ];
  List price = [
    '\$3.15',
    '\$1.50',
    '\$3.50',
    '\$5.75',
  ];
  List color = [
    Colors.pink.shade200,
    Colors.green.shade200,
    Colors.orange.shade200,
    Colors.redAccent.shade100,
  ];
  List color2 = [
    Colors.pink.shade300,
    Colors.green.shade600,
    Colors.orange.shade300,
    Colors.redAccent.shade200,
  ];

  List weight = [
    "(kg)",
    "(pc)",
    "(kg)",
    "(kg)",
  ];
  List image = [
    'assets/images/peach.png',
    'assets/images/basil.png',
    'assets/images/pumpkin.png',
    'assets/images/tomato.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black54,
                            size: 28,
                          )),
                      Text(
                        "My Cart",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/woman.png',
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: List.generate(
                        4,
                        (index) => Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: color[index],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      image[index],
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name[index],
                                      style: TextStyle(
                                          color: color2[index],
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      cuntry[index],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey.shade200,
                                                    blurRadius: 1,
                                                    spreadRadius: 1)
                                              ]),
                                          child: counter(),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          weight[index],
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 18),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.lime.shade800,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total:',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '\$13.90',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        height: 55,
                        minWidth: 180,
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              color: Colors.lime.shade800,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class counter extends StatefulWidget {
  const counter({Key? key}) : super(key: key);

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            icon: Icon(
              Icons.add,
              size: 18,
              color: Colors.black,
            )),
        Container(
          height: 40,
          width: 54,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.black45, blurRadius: 2, spreadRadius: 0.2)
          ], color: Colors.yellow.shade100),
          child: Center(child: Text('$counter')),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  counter--;
                }
              });
            },
            icon: Icon(
              Icons.remove,
              size: 18,
              color: Colors.black,
            )),
      ],
    );
  }
}
