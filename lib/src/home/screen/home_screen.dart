import 'package:case_study/src/home/widgets/nearby.dart';
import 'package:case_study/src/home/widgets/popular.dart';
import 'package:case_study/src/home/widgets/suggest.dart';
import 'package:flutter/material.dart';

import '../widgets/campaign.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: SafeArea(
            child: TabBarView(
              children: <Widget>[
                Home(),
                Center(
                  child: Text('HomeScreen2'),
                ),
                Center(
                  child: Text('HomeScreen3'),
                ),
                Center(
                  child: Text('HomeScreen4'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[],
                ),
              ],
            ),
          ),
          bottomNavigationBar: TabBar(
            indicator: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color.fromRGBO(255, 157, 1, 1),
                  width: 2,
                ),
              ),
            ),
            unselectedLabelColor: Color.fromRGBO(189, 189, 189, 1),
            labelColor: Color.fromRGBO(255, 157, 1, 1),
            indicatorColor: Colors.transparent,
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
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/bell.png',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.location_on_outlined,
                              size: 16,
                              weight: 700,
                              color: Color.fromRGBO(255, 157, 1, 1),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Home',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '9, suramya duplex, nr. nigam bus stand.....',
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.favorite_border,
                      color: Color.fromRGBO(218, 218, 218, 1),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 52,
                color: Colors.grey[100],
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: 'Search Food',
                          prefixIcon: Image.asset(
                            'assets/icons/search.png',
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(12),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset('assets/icons/slider.png'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Campaign(),
                ),
                const SizedBox(
                  height: 36,
                ),
                Suggest(),
                const SizedBox(
                  height: 36,
                ),
                Popular(),
                const SizedBox(
                  height: 36,
                ),
                Nearby(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
