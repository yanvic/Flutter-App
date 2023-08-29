import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Olá, Gabriel!',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(8.0)
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.search,
                    color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Pesquise um funcionário',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),

                  ],
                )
              ),

              SizedBox(
                height: 90,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Image.asset('lib/icons/'),
                  ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'alog',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'payment',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30, color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.red,
        animationDuration: const Duration(microseconds: 500000),
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.account_circle_outlined, size: 30),
        ],
        onTap: (index) {

        },
      ),
    );

  }
}
