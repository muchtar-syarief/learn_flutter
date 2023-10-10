import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
              Column(
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
                      'Forgot Password?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(255, 157, 1, 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Center(
                    child: Text(
                      'Atleast 9 characters with uppercase and lowercase letters.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              const ResetPassword(),
            ],
          ),
        ),
      ),
    );
  }
}

class ResetPassword extends StatefulWidget {

  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() {
    return _Login();
  }
}

class _Login extends State<ResetPassword> {
  var _hideNewPassword = true;
  var _hideConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onSubmitted: (value) {
                setState(() {
                  // widget.payload.email = value;
                });
              },
              obscureText: _hideNewPassword,
              decoration: InputDecoration(
                hintText: 'New Password',
                hintStyle: const TextStyle(
                  color: Color.fromRGBO(218, 218, 218, 1),
                ),
                border: InputBorder.none,
                filled: true,
                fillColor: const Color.fromRGBO(217, 217, 217, 0.25),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _hideNewPassword = !_hideNewPassword;
                      });
                    },
                    icon: Icon(
                      _hideNewPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: const Color.fromRGBO(218, 218, 218, 1),
                    )),
              ),
            ),
            TextField(
              onSubmitted: (value) {
                setState(() {
                  // widget.payload.email = value;
                });
              },
              obscureText: _hideConfirmPassword,
              decoration: InputDecoration(
                hintText: 'Comfirm Password',
                hintStyle: const TextStyle(
                  color: Color.fromRGBO(218, 218, 218, 1),
                ),
                border: InputBorder.none,
                filled: true,
                fillColor: const Color.fromRGBO(217, 217, 217, 0.25),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _hideConfirmPassword = !_hideConfirmPassword;
                      });
                    },
                    icon: Icon(
                      _hideConfirmPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: const Color.fromRGBO(218, 218, 218, 1),
                    )),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(56),
                backgroundColor: const Color.fromRGBO(255, 157, 1, 1),
              ),
              child: const Text(
                'Verify',
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
      ),
    );
  }
}
