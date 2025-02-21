import 'package:chat/pages/chat.dart';
import 'package:chat/pages/login.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool Ob = true;
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
                          "Name",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.person,
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
                        return "Name is required!!";
                      } else {
                        return null;
                      }
                    },
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
                        "Register",
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
                        "Do You Have An Account?",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const LoginPage();
                            }));
                          },
                          child: const Text("LOGIN",
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
