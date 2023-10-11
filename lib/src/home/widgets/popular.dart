import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  Popular({super.key});

  final List<Map<String, String>> popularBrandImg = [
    {
      'label': 'Domino\'s',
      'img': 'assets/images/domino_pizza.png',
    },
    {
      'label': 'Starbucks',
      'img': 'assets/images/starbuck.png',
    },
    {
      'label': 'McDonald\'s',
      'img': 'assets/images/mcd.png',
    },
    {
      'label': 'Dunkin\'',
      'img': 'assets/images/dunkin.png',
    },
    {
      'label': 'Subway',
      'img': 'assets/images/subway.png',
    },
    {
      'label': 'KFC',
      'img': 'assets/images/kfc.png',
    },
    {
      'label': 'Pizza Hut',
      'img': 'assets/images/pizza_hut.png',
    },
    
    {
      'label': 'Burger King',
      'img': 'assets/images/burger_king.png',
    },
    {
      'label': 'Haldiram\'s',
      'img': 'assets/images/haldiram.png',
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
                'Popular moods you can get',
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
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0),
                      Color.fromRGBO(255, 157, 1, 1)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      popularBrandImg[index]['img']!,
                    ),
                  ),
                ),
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    popularBrandImg[index]['label']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              );
            },
            itemCount: popularBrandImg.length,
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
