import 'package:case_study/src/widget/food_card.dart';
import 'package:flutter/material.dart';

class Nearby extends StatelessWidget {
  Nearby({super.key});

  final List<Map<String, dynamic>> foodNearby = [
    {
      'img': 'assets/images/pav_bhaji.jpg',
      'name': 'Pav Bhaji',
      'isVegan': true,
    },
    {
      'img': 'assets/images/pav_bhaji.jpg',
      'name': 'Pav Bhaji',
      'isVegan': true,
    },
    {
      'img': 'assets/images/pav_bhaji.jpg',
      'name': 'Pav Bhaji',
      'isVegan': true,
    },
    {
      'img': 'assets/images/pav_bhaji.jpg',
      'name': 'Pav Bhaji',
      'isVegan': true,
    },
    {
      'img': 'assets/images/pav_bhaji.jpg',
      'name': 'Pav Bhaji',
      'isVegan': true,
    },
    {
      'img': 'assets/images/pav_bhaji.jpg',
      'name': 'Pav Bhaji',
      'isVegan': true,
    },
    {
      'img': 'assets/images/pav_bhaji.jpg',
      'name': 'Pav Bhaji',
      'isVegan': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Nearby food arround you',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'view all',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(255, 157, 1, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ...foodNearby.map((v) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: FoodCard(food: v),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          );
        }).toList(),
      ],
    );
  }
}
