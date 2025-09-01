import 'package:flutter/material.dart';
import 'package:seconproject/page/home/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('lib/images/4.png'),
                Text(
                  'Welcome To Flex CryptoWorld, a place where transpancy is the call for the day. We bring digital asset to your pocket in safety.',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),

                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.amber[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Click Here',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
