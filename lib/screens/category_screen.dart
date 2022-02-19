import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson_one/widgets/car_item.dart';
import 'package:flutter_lesson_one/widgets/main_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/car.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Car> list = [
      Car(
        model: 'Daewo Gentra',
        imageUrl:
            'assets/images/gentra.jpg',
        cost: 7000,
        color: 'white',
        maxSpeed: 240,
      ),
      Car(
        model: 'Daewo Nexia 2',
        imageUrl:
        'assets/images/nexia2.jpg',
        cost: 5000,
        color: 'white',
        maxSpeed: 240,
      ),
      Car(
        model: 'Daewo Captiva',
        imageUrl:
        'assets/images/gentra1.jpg',
        cost: 10000,
        color: 'white',
        maxSpeed: 250,
      ),
      Car(
        model: 'Chevrolet Malibu 2',
        imageUrl:
        'assets/images/malibu2.jpg',
        cost: 12000,
        color: 'white',
        maxSpeed: 250,
      ),

    ];

    return Scaffold(
      appBar: AppBar(
        leading: Badge(
          position: BadgePosition.topEnd(top: 10, end: 10),
          badgeContent: const Text(
            '1',
            style: TextStyle(
                fontSize: 8, fontWeight: FontWeight.w900, color: Colors.white),
          ),
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        title: Text('Avtoelon'),
        // const Text(
        //   'Avtoelon',
        //   style: TextStyle(
        //       color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20,fontFamily: 'Open Sans'),
        // ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle_outline,
                size: 24,
              )),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.monetization_on_outlined,
              size: 24,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              size: 24,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body:  ListView.builder(
          itemBuilder: (ctx, i) {
            return CarItem(
                model: list[i].model,
                color: list[i].color,
                cost: list[i].cost,
                maxSpeed: list[i].maxSpeed,
                imageUrl: list[i].imageUrl
            );
          },
          itemCount: list.length,
        ),

      // body:ListView.builder(itemBuilder: itemBuilder) ,
    );
  }
}
