import 'package:aline/pages/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "@username",
          style: GoogleFonts.pacifico(color: Colors.black87, fontSize: 25),
        ),
        backgroundColor: Colors.white,
        // leading: IconButton(
        //   icon: const Icon(Icons.qr_code, color: Colors.black87),
        //   onPressed: () {},
        // ),
        // centerTitle: true,
        actions: [
          IconButton(
              icon: const Icon(Icons.menu, color: Colors.black87),
              onPressed: () {
                showModalBottomSheet<void>(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '@username',
                              style: TextStyle(color: Colors.amber),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()),
                                );
                              },
                              child: const Text(
                                'Login out',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black87),
                  ),
                ),
              ),

              // usernames
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Text(
                    "@username_surname",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // location information
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on),
                      Text(
                        "Location",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // following and followers
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.location_on),
                      Column(
                        children: [
                          Text(
                            "0",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Column(
                        children: [
                          Text(
                            "99M",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // story on borading
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 0, right: 5),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "About Me",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                              "Freelance graphic designers get the opportunity to combine art and technology in order to communicate ideas with a large audience. You may have to sketch logos, design website layouts, and create videos throughout your career.",
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //posts

              // story on borading
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 0, right: 0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Story",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          // color: Colors.amber,
                          // height: 80,
                          // width: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 0, left: 0, right: 0),
                            child: Container(
                              height: 80,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.black87),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              //posts
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 0, left: 0, right: 0),
                            child: Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 250,
                                      // width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 250,
                                      // width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 250,
                                      // width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 250,
                                      // width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 250,
                                      // width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 250,
                                      // width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 250,
                                      // width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 250,
                                      // width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black87),
                                    ),
                                  ),
                                ],
                              ),
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
      ),
    );
  }
}
