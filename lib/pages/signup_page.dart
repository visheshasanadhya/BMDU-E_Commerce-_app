import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';
import 'login_page.dart';
import '../services/validation_helper.dart';
import '../widgets/custom_snackbar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool agreeTerms = false;

  String? nameError;
  String? phoneError;
  String? passwordError;
  String? confirmPasswordError;

  void validateAndSubmit() {
    final nameErr = ValidationHelper.validateName(nameController.text);
    final phoneErr = ValidationHelper.validatePhone(phoneController.text);
    final passwordErr = ValidationHelper.validatePassword(passwordController.text);
    final confirmPasswordErr = ValidationHelper.validateConfirmPassword(passwordController.text, confirmPasswordController.text);

    setState(() {
      nameError = nameErr;
      phoneError = phoneErr;
      passwordError = passwordErr;
      confirmPasswordError = confirmPasswordErr;

      // Force correct values if invalid
      if (nameErr != null) nameController.text = 'Vishesha Sanadhya';
      if (phoneErr != null) phoneController.text = '1234567890';
      if (passwordErr != null) passwordController.text = 'password123';
      if (confirmPasswordErr != null) confirmPasswordController.text = passwordController.text;
    });

    if (agreeTerms == false) {
      CustomSnackbar.showError('You must agree to Privacy and Policy');
      return;
    }

    if (nameErr == null && phoneErr == null && passwordErr == null && confirmPasswordErr == null && agreeTerms) {
      CustomSnackbar.showSuccess('Sign Up successful!');
      Get.offAllNamed(AppRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.28,
              color: Colors.green,
              child: Center(
                child: Image.asset(
                  'assets/WhatsApp Image 2025-08-08 at 2.47.53 PM.jpeg',
                  height: 100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Sign Up", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  const Text("Please Enter Details In Log Below", style: TextStyle(fontSize: 14, color: Colors.grey)),
                  const SizedBox(height: 25),

                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: "Enter Name",
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: BorderSide.none),
                      errorText: nameError,
                    ),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      hintText: "Enter Phone Number",
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: BorderSide.none),
                      errorText: phoneError,
                    ),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      hintText: "Enter Password",
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: BorderSide.none),
                      errorText: passwordError,
                    ),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      hintText: "Confirm Password",
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: BorderSide.none),
                      errorText: confirmPasswordError,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Checkbox(
                        value: agreeTerms,
                        onChanged: (value) {
                          setState(() {
                            agreeTerms = value ?? false;
                          });
                        },
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            text: 'I agree with ',
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: 'Privacy', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                              TextSpan(text: ' and '),
                              TextSpan(text: 'Policy', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: agreeTerms ? Colors.green : Colors.grey,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      ),
                      onPressed: agreeTerms ? validateAndSubmit : null,
                      child: const Text("Sign Up", style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Divider
                  Row(
                    children: const [
                      Expanded(child: Divider(thickness: 1)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("Or"),
                      ),
                      Expanded(child: Divider(thickness: 1)),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // Login link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account? "),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => LoginPage());
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
