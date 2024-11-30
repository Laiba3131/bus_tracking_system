import 'package:bus_tracking_management_system/screens/basic_signup_screen.dart';
import 'package:bus_tracking_management_system/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class StudentSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseSignUpScreen(
       userType: 'Student',
      title: 'Student Signup',
      additionalFields: [
        CustomTextFormField(
          hintText: 'Batch/Session',
          prefixIcon: Icons.school,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Semester',
          prefixIcon: Icons.calendar_today,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Bus Stop/Route',
          prefixIcon: Icons.directions_bus,
        ),
      ],
    );
  }
}
