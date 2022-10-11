import 'package:flutter/material.dart';

import 'detailspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime.shade800,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                "Get\nOrganic Food",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Find the freshest food and get\nfree delivery in your town",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 25,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                height: 70,
                minWidth: 250,
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.lime.shade800,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(),
                      ));
                },
              ),
              Spacer(),
              Center(
                child: Image.asset(
                  'assets/images/organicfood.png',
                  height: 346.5,
                  width: 500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
