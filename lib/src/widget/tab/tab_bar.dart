import 'package:flutter/material.dart';

class TabBarMenu extends StatelessWidget {
  const TabBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      // unselectedLabelColor: Color.fromRGBO(189, 189, 189, 1),
      // labelColor: Color.fromRGBO(255, 157, 1, 1),
      labelColor: Colors.yellow,
      unselectedLabelColor: Colors.blue,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.red,
      tabs: <Widget>[
        Tab(
          child: Icon(
            Icons.home_outlined,
            size: 24,
          ),
        ),
        Tab(
          child: Icon(
            Icons.category_outlined,
            size: 24,
          ),
        ),
        Tab(
          child: Icon(
            Icons.store,
            size: 24,
          ),
        ),
        Tab(
          child: Icon(
            Icons.shopping_cart_outlined,
            size: 24,
          ),
        ),
        Tab(
          child: Icon(
            Icons.person,
            size: 24,
          ),
        ),
      ],
    );
  }
}
