import 'package:bus_tracking_management_system/screens/basic_signup_screen.dart';
import 'package:bus_tracking_management_system/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AdminSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseSignUpScreen(userType: 'Admin',
      title: 'Admin Signup',
      additionalFields: [
        CustomTextFormField(
          hintText: 'Admin ID',
          prefixIcon: Icons.security,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Role',
          prefixIcon: Icons.admin_panel_settings,
        ),
      ],
    );
  }
}
