import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_city/screens/auth/forgetpassword_screen.dart';
import 'package:new_city/screens/home_screen.dart';
import 'package:new_city/widgets/elevated_button.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              height: 450,
              width: 450,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const Text('Sign In', style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    fontFamily: "Quicksand-SemiBold"
                   ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Sign in with your account', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: "Quicksand-Regular",
                      color: Color(0xff868e96)
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter Username",
                              labelText: "Username",
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password"
                          ),
                        ),
                        const SizedBox(height: 20),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.check_box_outline_blank),
                                Text(' Remember me', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Quicksand-Rehular',
                                  color: Color(0xff37474f),
                                ),
                                ),
                              ],
                            ),
                            CustomElevatedButton(
                                width: 100,
                                height: 30,
                                backgroundColor: const Color(0xffbbbdc2),
                                text: 'Forget Password',
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontFamily: 'Quicksand-Regular',
                                    fontWeight: FontWeight.w300
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPasswordScreen()));
                                },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: CustomElevatedButton(
                      width: 350,
                      height: 50,
                      backgroundColor: Colors.blue,
                      text: 'LOGIN',
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Quicksand-SemiBold',
                          fontWeight: FontWeight.w500
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  const HomeScreen()));
                      },
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
