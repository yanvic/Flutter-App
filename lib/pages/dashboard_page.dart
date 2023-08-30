import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/list.dart';

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


              Padding(padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    ListTitle(
                        iconImagePath: 'lib/images/downloa.png',
                        tileTitle: 'Backups',
                        tileSubTitle: 'Faça seu backup',
                    ),
                    ListTitle(
                      iconImagePath: 'lib/images/downloa.png',
                      tileTitle: 'Backups',
                      tileSubTitle: 'Faça seu backup',
                    ),
                    ListTitle(
                      iconImagePath: 'lib/images/downloa.png',
                      tileTitle: 'Backups',
                      tileSubTitle: 'Faça seu backup',
                    )
                  ],
                ),

              ),

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
