import 'package:aline/pages/home.dart';
import 'package:aline/pages/screens/login.dart';
import 'package:flutter/material.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Icon(
              Icons.person,
              size: 150,
            ),
            const SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, left: 20, bottom: 0, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  // focusColor: Colors.red,
                  hoverColor: Colors.grey[300],
                  fillColor: Colors.white,
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  labelText: 'Name',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, left: 20, bottom: 0, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  // focusColor: Colors.red,
                  hoverColor: Colors.grey[300],
                  fillColor: Colors.white,
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, left: 20, bottom: 0, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  // focusColor: Colors.red,
                  hoverColor: Colors.grey[300],
                  fillColor: Colors.white,
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  labelText: 'Phone no',
                ),
              ),
            ),
            // const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(top: 8, left: 20, bottom: 0, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(
                      title: "",
                    ),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black87,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 150),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ),
            ),
            // const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Alerady have an account',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Login Now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black87,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.media_bluetooth_off,
                          color: Colors.white,
                        )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black87,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.media_bluetooth_off,
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
