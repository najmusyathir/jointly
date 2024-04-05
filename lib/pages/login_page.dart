import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jointly/widget/custom_textfield.dart';
import 'package:jointly/widget/login_button.dart';
import 'package:jointly/widget/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              //logo
              const Icon(
                Icons.lock,
                size: 65,
              ),

              const SizedBox(
                height: 30,
              ),

              //Welcome back
              Text(
                "Welcome back, you've been missed!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //username textfield
              OwnTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false),

              const SizedBox(
                height: 10,
              ),

              //password textfield
              OwnTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true),

              const SizedBox(
                height: 10,
              ),

              //forgot pass?
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?"),
                  ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              // sign-in button
              LoginButton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 20,
              ),
              // or continue  with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[600],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[600],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              // google  + apple sign in button
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath_: 'assets/google.png'),
                  SizedBox(
                    width: 25,
                  ),
                  SquareTile(imagePath_: 'assets/apple.png'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // not a member

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    child: const Text(
                      "Register now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
