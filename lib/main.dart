import 'package:flutter/material.dart';
import 'package:lgoin_ui/routes.dart';
import 'package:lgoin_ui/signup.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    debugShowCheckedModeBanner: false,
    routes: {
      signuproutes: (context) => const Signup(),
      loginroutes: (context) => const MyApp(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  height: 50,
                  width: 50,
                  image: AssetImage('images/logo.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Medi-Gaze',
                      style:
                          TextStyle(fontFamily: 'Rubik Medium', fontSize: 27),
                    ),
                    Text(
                      'Save Time, Save Life',
                      style: TextStyle(color: Color(0xffF9703B), fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Rubik Medium',
                  color: Color(0xff2D3142),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Center(
              child: Text(
                'Life will be get easier after\nMedi-Gaze',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Rubik Regular',
                  color: Color(0xff4C5980),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: ' Email ',
                  fillColor: Color.fromARGB(31, 54, 0, 0),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black87,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 242, 70, 2)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 234, 69, 4)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: ' Password ',
                  fillColor: Color.fromARGB(31, 54, 0, 0),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black87,
                  ),
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 234, 69, 4)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 234, 69, 4)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 260),
              child: Text(
                'Forget?',
                style: TextStyle(
                  fontFamily: 'Rubik Medium',
                  fontSize: 19,
                  color: Colors.red[400],
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: const Color(0xffF9703B),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Rubik Regular',
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have a account?",
                  style: TextStyle(
                    fontFamily: 'Rubik Medium',
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        signuproutes, (route) => false);
                  },
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                      fontFamily: 'Rubik Medium',
                      fontSize: 20,
                      color: Colors.red[300],
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
