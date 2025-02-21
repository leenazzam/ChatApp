import 'package:chat/pages/chat.dart';
import 'package:chat/pages/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool Ob = true;
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var keyform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3f51b5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: keyform,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://icons.veryicon.com/png/o/miscellaneous/two-color-icon-library/user-286.png"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "WELCOME ! , Login To Your Account ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        label: const Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "email is required!!";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: Ob,
                    decoration: InputDecoration(
                        label: const Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              Ob = !Ob;
                            });
                          },
                          icon: Icon(Ob == false
                              ? Icons.visibility
                              : Icons.visibility_off),
                          color: Colors.white,
                        ),
                        prefixIcon: const Icon(
                          Icons.password,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is required!!";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (keyform.currentState!.validate()) {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const ChatPage();
                          }));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Color(0xFF3f51b5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't Have Account?",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const RegisterPage();
                            }));
                          },
                          child: const Text("Register",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 167, 185, 247),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
