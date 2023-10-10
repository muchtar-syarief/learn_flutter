import 'package:case_study/src/widget/tab/tab_bar.dart';
import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: <Widget>[
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
            height: 36,
          ),
          const Campaign(),
        ],
      ),
    );
  }
}

class Campaign extends StatelessWidget {
  const Campaign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 208,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/indian-condiments-with-copy-space.png',
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(
                'OFFER',
                style: TextStyle(
                  fontSize: 64,
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      colors: <Color>[
                        Color.fromRGBO(255, 157, 1, 1),
                        Color.fromRGBO(42, 41, 46, 0),
                      ],
                    ).createShader(
                      Rect.fromLTWH(0.5, 0, 50, 0),
                    ),
                ),
              )
          )
        ],
      ),
    );
  }
}
