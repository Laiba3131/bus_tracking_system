import 'package:bus_tracking_management_system/utils/consts.dart';
import 'package:bus_tracking_management_system/widgets/custom_app_bar.dart';
import 'package:bus_tracking_management_system/widgets/custom_button.dart';
import 'package:bus_tracking_management_system/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_screen.dart';

class BaseSignUpScreen extends StatelessWidget {
  final String title;
  final List<Widget> additionalFields;
final String userType;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  BaseSignUpScreen({required this.title, required this.additionalFields, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: CustomAppBar(
         title: title,
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Create your Account',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    controller: nameController,
                    hintText: 'Name',
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: 'Email',
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    controller: passwordController,
                    hintText: 'Password',
                    prefixIcon: Icons.lock,
                    obscureText: true,
                  ),
                   const SizedBox(height: 20),
                  ...additionalFields,
                  const SizedBox(height: 20),
                  CustomButton(
                    onTap: () {
                      Get.to(() =>  SignInScreen(userType: userType));
                    },
                    label: 'Register',
                    bgColor:  AppColors.primary,
                    labelColor: Colors.white,
                      borderRadius: 50,
                      height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
