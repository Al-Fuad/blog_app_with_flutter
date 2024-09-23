import 'package:blog_app/core/theme/app_color.dart';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  static route() => MaterialPageRoute(builder: (context) => const SigninPage());

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign In",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              const SizedBox(height: 30),
              AuthField(hintText: "Email", controller: emailController),
              const SizedBox(height: 15),
              AuthField(
                  hintText: "Password",
                  controller: passwordController,
                  obscureText: true),
              const SizedBox(height: 20),
              const AuthGradientButton(buttonText: "Sign In"),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, SignupPage.route());
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Don't have an account? ",
                      style: Theme.of(context).textTheme.titleMedium),
                  TextSpan(
                      text: "Sign Up",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColor.gradient2,
                          fontWeight: FontWeight.bold))
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
