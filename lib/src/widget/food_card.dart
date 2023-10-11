import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  final Map<String, dynamic> food;
  const FoodCard({super.key, required this.food});

  @override
  State<FoodCard> createState() {
    return FoodCardState();
  }
}

class FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  widget.food['img']!,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      widget.food['isVegan']
                          ? 'assets/icons/vegan_indicator.png'
                          : 'assets/icons/vegan_indicator.png',
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Das Kitchen',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'North Indian, Snacks',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Pav Bhaji',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(255, 157, 1, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      '₹ 100',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(255, 157, 1, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/clock.png',
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text('15 mins'),
                        const SizedBox(
                          width: 4,
                        ),
                        const VerticalDivider(
                          width: 2,
                          thickness: 2,
                          indent: 2,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '1 km',
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
