import 'package:flutter/material.dart';
import 'package:lgoin_ui/routes.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 1,
              ),
              Image(
                height: 150,
                width: 150,
                image: AssetImage(
                  'images/medigaze.jpeg',
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Name',
                fillColor: Colors.white60,
                filled: true,
                prefixIcon: Icon(Icons.man),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 208, 132, 18),
                  ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Age',
                fillColor: Colors.white60,
                filled: true,
                prefixIcon: Icon(Icons.elderly),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 208, 132, 18),
                  ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Mobile No',
                fillColor: Colors.white60,
                filled: true,
                prefixIcon: Icon(Icons.contact_phone),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 208, 132, 18),
                  ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Address',
                fillColor: Colors.white60,
                filled: true,
                prefixIcon: Icon(Icons.location_city),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 208, 132, 18),
                  ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'E-mail',
                fillColor: Colors.white60,
                filled: true,
                prefixIcon: Icon(Icons.email),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 208, 132, 18),
                  ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                fillColor: Colors.white60,
                filled: true,
                prefixIcon: Icon(Icons.password),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 208, 132, 18),
                  ),
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
            height: 40,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 195, 195),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(loginroutes, (route) => false);
              },
              child: const Text(
                "SignUp",
                style: TextStyle(
                  fontFamily: 'Rubik Medium',
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
