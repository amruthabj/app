import 'package:flutter/material.dart';
import 'sign_in.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  bool visible = true;
  final _signupformkey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController phoneno = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Form(
            key: _signupformkey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 200.0,
                  child: Image(image: AssetImage('images/img.png')),
                ),
                const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.grey, fontSize: 20.0),
                    )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    validator: (username) {
                      if (username!.isEmpty && username != null) {
                        return "Enter your username";
                      }
                    },
                    controller: username,
                    cursorColor: Colors.greenAccent,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.greenAccent,
                      ),
                      hintText: "Enter Your Email here",
                      hintStyle: const TextStyle(color: Colors.greenAccent),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    validator: (phoneno) {
                      if (phoneno!.isEmpty && phoneno != null) {
                        return "Enter your phonenumber";
                      }
                    },
                    controller: username,
                    cursorColor: Colors.greenAccent,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Colors.greenAccent,
                      ),
                      hintText: "Enter Your phonenumber here",
                      hintStyle: const TextStyle(color: Colors.greenAccent),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    validator: (password) {
                      if (password!.isEmpty && password != null) {
                        return "Enter your password";
                      }
                    },
                    controller: password,
                    obscureText: visible,
                    cursorColor: Colors.greenAccent,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.password_outlined,
                        color: Colors.greenAccent,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                        icon: visible
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                      hintText: "Enter Your password here",
                      hintStyle: const TextStyle(color: Colors.greenAccent),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      onPressed: () {
                        if(_signupformkey.currentState!.validate()){};
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signinscreen()),
                          );
                        },
                        child: Text('Log in')
                    )


                  ],
                )
              ],
            ),
          ),
        ));
  }
}
