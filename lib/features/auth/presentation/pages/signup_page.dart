import 'package:blog_app/core/theme/app_color.dart';
import 'package:blog_app/features/auth/presentation/pages/signin_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  static route() => MaterialPageRoute(builder: (context) => const SignupPage());

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              const SizedBox(height: 30),
              AuthField(hintText: "Name", controller: nameController),
              const SizedBox(height: 15),
              AuthField(hintText: "Email", controller: emailController),
              const SizedBox(height: 15),
              AuthField(
                  hintText: "Password",
                  controller: passwordController,
                  obscureText: true),
              const SizedBox(height: 20),
              const AuthGradientButton(buttonText: "Sign Up",),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, SigninPage.route());
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Already have an account? ",
                      style: Theme.of(context).textTheme.titleMedium),
                  TextSpan(
                      text: "Sign In",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColor.gradient2, fontWeight: FontWeight.bold))
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
