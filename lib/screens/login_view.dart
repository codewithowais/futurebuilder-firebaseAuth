import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newapp4/screens/singup_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  loginUser() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      emailController.clear();
      passwordController.clear();
      print("=============== LoggedIn Successfully ===================");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print("=============== Catch ===================");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: "Enter Email",
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: "Enter Password",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              loginUser();
            },
            child: const Text("Login"),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpView(),
                ),
              );
            },
            child: const Text(
              "Don't have already Account, Register here.",
            ),
          ),
        ],
      ),
    );
  }
}
