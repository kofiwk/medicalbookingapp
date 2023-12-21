import 'package:doctor/components/button.dart';
import 'package:doctor/components/square_tile.dart';
import 'package:doctor/components/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              //Icon
              const Icon(
                Icons.lock,
                size: 100,
                color: Colors.blue,
              ),

              const SizedBox(height: 50),

              //Text
              Text(
                "Welcome back you've been missed!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 25),

              //Email
              MyTextField(
                obscureText: false,
                controller: emailController,
                hintText: 'Email',
              ),

              const SizedBox(height: 10),

              //Password
              MyTextField(
                controller: passwordController,
                obscureText: true,
                hintText: 'Password',
              ),

              const SizedBox(height: 10),

              //Forgot Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //Sign In button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              //Or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 50),

              //Google + Apple Sign In
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Google Button
                  SquareTile(imagePath: 'lib/images/google.png'),
                  
                  const SizedBox(width: 40),
                  // Apple Button
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
