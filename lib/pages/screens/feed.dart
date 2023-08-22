import 'package:aline/pages/chats.dart';
import 'package:aline/pages/widgets/posts.dart';
// import 'package:aline/pages/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "aline",
          style: GoogleFonts.pacifico(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          // IconButton(
          //   icon: const Icon(
          //     Icons.notifications,
          //     color: Colors.black,
          //   ),
          //   onPressed: () {},
          // ),
          IconButton(
            icon: const Icon(
              Icons.message_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              // return ChatsPage();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatsPage()),
              );
            },
          ),
        ],
      ),

      //body parts
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              // story on borading
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // const Row(
                        //   children: [
                        //     SizedBox(
                        //       width: 10,
                        //     ),
                        //     Text(
                        //       "Story",
                        //       style: TextStyle(
                        //           fontSize: 20, fontWeight: FontWeight.bold),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
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
                        // const Row(
                        //   children: [
                        //     SizedBox(
                        //       width: 10,
                        //     ),
                        //     Text(
                        //       "Posts",
                        //       style: TextStyle(
                        //           fontSize: 20, fontWeight: FontWeight.bold),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
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
