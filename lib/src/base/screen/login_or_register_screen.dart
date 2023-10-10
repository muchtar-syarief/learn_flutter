import 'package:carousel_slider/carousel_slider.dart';
import 'package:case_study/src/authentication/index.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterScreen extends StatefulWidget {
  const LoginOrRegisterScreen({super.key});

  @override
  State<LoginOrRegisterScreen> createState() {
    return LoginOrRegister();
  }
}

class LoginOrRegister extends State<LoginOrRegisterScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> imgList = <String>[
    'assets/images/best_price.png',
    'assets/images/track_orders.png',
    'assets/images/fast_delivery.png',
  ]
      .map((e) => Image.asset(
            e,
            height: 357,
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselSlider(
                      items: imgList,
                      carouselController: _controller,
                      options: CarouselOptions(
                        autoPlay: true,
                        scrollDirection: Axis.horizontal,
                        autoPlayAnimationDuration: const Duration(
                          seconds: 1,
                        ),
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 4.0,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 268,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromRGBO(255, 155, 99, 1),
                    Color.fromRGBO(255, 157, 1, 1),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 56,
                  horizontal: 36,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const LoginScreen();
                        },),);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(58),
                      ),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontFamily: 'InterSemiBold',
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(58),
                        backgroundColor: Colors.black,
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontFamily: 'InterSemiBold',
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
