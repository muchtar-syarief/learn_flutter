import 'package:flutter/material.dart';

class Campaign extends StatelessWidget {
  const Campaign({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 208,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/indian-condiments-with-copy-space.png',
          ),
          Container(
              alignment: Alignment.bottomCenter,
              child: const Text(
                'OFFER',
                style: TextStyle(
                  fontSize: 64,
                  fontFamily: 'Poppins',
                ),
              )),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 12,
                    left: 12,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Get your first order at',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '60% off',
                        style: TextStyle(
                          fontSize: 22,
                          color: Color.fromRGBO(255, 157, 1, 1),
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: const Padding(
                    padding: EdgeInsets.only(
                      right: 12,
                      bottom: 12,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Dive In Now.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 157, 1, 1),
                          ),
                        ),
                        Text(
                          '*Only available for new foodies.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
