import 'package:case_study/src/authentication/screen/forgot_password.dart';
import 'package:case_study/src/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Color.fromRGBO(255, 157, 1, 1),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  const Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(255, 157, 1, 1),
                      ),
                    ),
                  ),
                ],
              )),
              const Login(),
            ],
          ),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  // final LoginPayload payload = const LoginPayload(email: '', password: '');

  const Login({super.key});

  @override
  State<Login> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  var _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            onSubmitted: (value) {
              setState(() {
                // widget.payload.email = value;
              });
            },
            decoration: const InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Color.fromRGBO(218, 218, 218, 1),
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Color.fromRGBO(217, 217, 217, 0.25),
              prefixIcon: Icon(
                Icons.mail_outline,
                color: Color.fromRGBO(218, 218, 218, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            onSubmitted: (value) {
              setState(() {
                // widget.payload.email = value;
              });
            },
            obscureText: _hidePassword,
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: const TextStyle(
                color: Color.fromRGBO(218, 218, 218, 1),
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: const Color.fromRGBO(217, 217, 217, 0.25),
              prefixIcon: const Icon(
                Icons.lock_outline_rounded,
                color: Color.fromRGBO(218, 218, 218, 1),
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _hidePassword = !_hidePassword;
                    });
                  },
                  icon: Icon(
                    _hidePassword
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: const Color.fromRGBO(218, 218, 218, 1),
                  )),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.zero,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ForgotPasswordScreen();
                    },
                  ),
                );
              },
              child: const Text(
                'Lupa Password?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Color.fromRGBO(255, 157, 1, 1),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              },),);
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(56),
              backgroundColor: const Color.fromRGBO(255, 157, 1, 1),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
