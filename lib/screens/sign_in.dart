import 'package:flutter/material.dart';
import 'signup.dart';

class signinscreen extends StatefulWidget {
  const signinscreen({super.key});

  @override
  State<signinscreen> createState() => _signinscreenState();
}

class _signinscreenState extends State<signinscreen> {
  bool visible = true;
  final _signinformkey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
        key: _signinformkey,
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
                    if(_signinformkey.currentState!.validate()){};
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signupscreen()),
                      );
                    },
                    child: Text('Sign up')
                )


              ],
            )
          ],
        ),
      ),
    ));
  }
}
