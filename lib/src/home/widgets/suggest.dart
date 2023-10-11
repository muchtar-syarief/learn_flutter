import 'package:flutter/material.dart';

class Suggest extends StatelessWidget {
  Suggest({super.key});

  final List<Map<String, String>> suggestFoodImg = [
    {
      'label': 'Snack',
      'img': 'assets/images/snack.jpg',
    },
    {
      'label': 'Pizza',
      'img': 'assets/images/pizza.jpg',
    },
    {
      'label': 'Biryani',
      'img': 'assets/images/briyani.jpg',
    },
    {
      'label': 'Burgers',
      'img': 'assets/images/burger.jpg',
    },
    {
      'label': 'Chinese',
      'img': 'assets/images/chinese.jpg',
    },
    {
      'label': 'Desserts',
      'img': 'assets/images/dessert.jpg',
    },
    {
      'label': 'Sweets',
      'img': 'assets/images/sweets.jpg',
    },
    {
      'label': 'North Indian',
      'img': 'assets/images/north_indian.jpg',
    },
    {
      'label': 'South Indian',
      'img': 'assets/images/south_indian.jpg',
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
                'What\'s your mood today?',
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
        SizedBox(
          height: 136,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: 134,
                height: 136,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        suggestFoodImg[index]['img']!,
                      ),
                      fit: BoxFit.cover),
                ),
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    suggestFoodImg[index]['label']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              );
            },
            itemCount: suggestFoodImg.length,
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 20,
              );
            },
          ),
        ),
      ],
    );
  }
}
