import 'package:flutter/material.dart';

class ButtomLogin extends StatelessWidget {

  final Function()? onTap;

  ButtomLogin({
    super.key,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        print('click');
        Navigator.pushNamed(context, '/dashboard');
      },
      child: Container(
        padding: const EdgeInsets.all(35),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(8)
        ),
        child: const Center(
          child: Text(
              'Entrar',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
          ),

        ),
      ),
    );
  }
}