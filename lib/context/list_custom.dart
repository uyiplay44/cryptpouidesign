import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  final String balance;
  final String imagePath;
  final String amountPath;
  final String titlePath;

  const ItemScreen({
    super.key,
    required this.balance,
    required this.imagePath,
    required this.amountPath,
    required this.titlePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(imagePath, height: 50),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(child: Text(titlePath)),
                        Container(child: Text(amountPath)),
                      ],
                    ),
                  ],
                ),

                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: Color.fromARGB(144, 92, 92, 92),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      balance,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
