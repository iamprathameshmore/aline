import 'package:aline/pages/home.dart';
import 'package:aline/pages/screens/login.dart';
import 'package:aline/pages/screens/registation.dart';
import 'package:flutter/material.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Icon(
              Icons.lock,
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
                  fillColor: Colors.grey[300],
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  labelText: 'Email / Phone No. / UserName',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.only(top: 8, left: 20, bottom: 0, right: 20),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       // focusColor: Colors.red,
            //       hoverColor: Colors.grey[300],
            //       fillColor: Colors.grey[300],
            //       filled: true,
            //       border: const OutlineInputBorder(
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(5),
            //         ),
            //       ),
            //       labelText: 'Password',
            //     ),
            //   ),
            // ),

            // Padding(
            //   padding: const EdgeInsets.only(right: 10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       TextButton(
            //         onPressed: () {},
            //         child: const Text(
            //           'Forgot Password?',
            //           style: TextStyle(
            //             color: Colors.black87,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 100),
                child: const Text(
                  'Forget',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ),
            ),
            // // const SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Text(
            //       'Create a new',
            //       style: TextStyle(
            //         color: Colors.black87,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     TextButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const RegScreen()),
            //         );
            //       },
            //       child: const Text(
            //         'Register Now',
            //         style: TextStyle(
            //           color: Colors.blue,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Padding(
            //       padding:
            //           const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //       child: Container(
            //         height: 70,
            //         width: 70,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(5),
            //           color: Colors.black87,
            //         ),
            //         child: IconButton(
            //             onPressed: () {},
            //             icon: const Icon(
            //               Icons.media_bluetooth_off,
            //               color: Colors.white,
            //             )),
            //       ),
            //     ),
            //     Padding(
            //       padding:
            //           const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //       child: Container(
            //         height: 70,
            //         width: 70,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(5),
            //           color: Colors.black87,
            //         ),
            //         child: IconButton(
            //             onPressed: () {},
            //             icon: const Icon(
            //               Icons.media_bluetooth_off,
            //               color: Colors.white,
            //             )),
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
