import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_city/screens/auth/login_screen.dart';

import '../../widgets/elevated_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f9fa),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 225,
            color: const Color(0xff66a7ef),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text('New City', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      fontFamily: "Quicksand-Regular"
                  ),),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(0,-150),
            child: Container(
              height: 350,
              width: 450,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const Text('Recover your password', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      fontFamily: "Quicksand-SemiBold"
                  ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Enter email address",
                            labelText: "Your Email Address",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: CustomElevatedButton(
                      width: 350,
                      height: 50,
                      backgroundColor: Colors.blue,
                      text: 'Reset Password',
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Quicksand-SemiBold',
                          fontWeight: FontWeight.w500
                      ),
                      onPressed: (){},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomElevatedButton(
                          width: 100,
                          height: 30,
                          backgroundColor: const Color(0xffbbbdc2),
                          text: 'Back To Login',
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w300
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
