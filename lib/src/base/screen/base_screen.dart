import 'package:case_study/src/base/screen/login_or_register_screen.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(
          const Duration(
            seconds: 2,
          ),
        ),
        builder: (context, snapshot) =>
            snapshot.connectionState != ConnectionState.done
                ? Container(
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/logo.png',
                            width: 158,
                          ),
                          const Text(
                            'Food Delivery Services',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : const LoginOrRegisterScreen(),
      ),
    );
  }
}
