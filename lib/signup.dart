import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';


class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({super.key, required this.showLoginPage});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final firstNameController = TextEditingController();
  final secondNameController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    secondNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }



  

 

  bool passwordConfirmed() {
    if (passwordController.text == confirmPasswordController.text) {
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Passwords do not match.'),
        ),
      );
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 170),
                  Text('Hello there!',
                      style: GoogleFonts.greatVibes(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 13,
                  ),
                  const Text('Please register here'),
                  const SizedBox(height: 25),
                  //First Name TextField
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: firstNameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'First Name',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  //Second Name TextField
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: secondNameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Last Name',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
              
                  //Email TextField
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email address',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  //Password TextField
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      )),
                  const SizedBox(height: 15),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      )),
                  const SizedBox(height: 25),

                  //Sign In Button
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                        height: 45,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                            child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ));
  }
}