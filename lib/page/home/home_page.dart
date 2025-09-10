import 'package:flutter/material.dart';
import 'package:seconproject/context/list_custom.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'lib/images/2.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome back!',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Damitry Pius',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.notifications_on_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 570,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.orange,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Total Balance',
                            style: TextStyle(
                              fontSize: 17.6,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "\$12,3789.05",
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              print('Welcome');
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.5),
                              color: Colors.deepOrange,
                            ),
                            child: Text(
                              "Withdraw money to bank ",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Gift Cards', style: TextStyle(fontSize: 15)),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print('Killing it');
                        });
                      },
                      child: Row(
                        children: [
                          Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15,
                            ),
                          ),
                          Icon(Icons.arrow_right_sharp, color: Colors.orange),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'lib/images/a.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                          Text('Amazon'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'lib/images/m.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                          Text('MasterCard'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'lib/images/ap.png',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Text('ITunes'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Text('Crypto')),
                    Row(
                      children: [
                        Container(
                          child: Text(
                            'See All',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                        Icon(Icons.arrow_right_sharp, color: Colors.orange),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ItemScreen(
                      balance: '-\$103.50',
                      imagePath: 'lib/images/bit.png',
                      amountPath: '\$66,145.80',
                      titlePath: 'Bitcoin',
                    ),
                    SizedBox(height: 5),
                    ItemScreen(
                      balance: '-\$35.78',
                      imagePath: 'lib/images/eth.png',
                      amountPath: '\$30,145.80',
                      titlePath: 'Ethereum',
                    ),
                    SizedBox(height: 5),
                    ItemScreen(
                      balance: '-\$230.50',
                      imagePath: 'lib/images/tel.jpg',
                      amountPath: '\$5,145.80',
                      titlePath: 'Telsa',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
