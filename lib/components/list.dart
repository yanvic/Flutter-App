
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;

  const ListTitle ({
    Key? key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubTitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tileTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              tileSubTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20, color: Colors.grey,
              ),
            ),
          ],
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}

