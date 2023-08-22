import 'package:aline/pages/chats.dart';
import 'package:aline/pages/widgets/posts.dart';
// import 'package:aline/pages/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // toolbarHeight: 0,
          title: Text(
            "world chat",
            style: GoogleFonts.pacifico(color: Colors.black, fontSize: 25),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.radio_button_checked,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            // IconButton(
            //   icon: const Icon(
            //     Icons.search,
            //     color: Colors.black,
            //   ),
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: const Icon(
            //     Icons.notifications,
            //     color: Colors.black,
            //   ),
            //   onPressed: () {},
            // ),
            IconButton(
              icon: const Icon(
                Icons.filter_alt,
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
            margin: const EdgeInsets.only(
              bottom: 0,
            ),
            child: const Column(
              children: <Widget>[
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                Posts(message: 'hello', user: 'world'),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
        // bottomSheet: const TabBarScreen(),

        bottomSheet: Container(
          color: Colors.white,
          margin: const EdgeInsets.only(
            bottom: 0,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 60,
              alignment: Alignment.bottomCenter,
              child: Column(children: [
                SizedBox(
                  width: 320,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 200,
                                    height: 50,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        fillColor: Colors.grey[300],
                                        filled: true,
                                        hoverColor: Colors.white,
                                        labelText: 'Make a New Post',
                                        // suffixIcon: const Icon(Icons.photo),
                                        // prefixIcon: const Icon(
                                        //   Icons.emoji_emotions,
                                        //   size: 30,
                                        // ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black87,
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: IconButton(
                                                alignment: Alignment.center,
                                                onPressed: () {},
                                                icon: const Icon(
                                                  // AssetImage('assets/icons/plus.png'),
                                                  Icons.add,
                                                  size: 30,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black87,
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: IconButton(
                                                alignment: Alignment.center,
                                                onPressed: () {},
                                                icon: const Icon(
                                                  // AssetImage('assets/icons/plus.png'),
                                                  Icons.arrow_upward_rounded,
                                                  size: 25,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                        //                   SizedBox(
                        //                     child: Padding(
                        //                       padding: const EdgeInsets.symmetric(horizontal: 10),
                        //                       child: Row(
                        //                         children: [
                        //                           Padding(
                        //                             padding:
                        //                                 const EdgeInsets.symmetric(horizontal: 5),
                        //                             child: Container(
                        //                               alignment: Alignment.center,
                        //                               height: 50,
                        //                               width: 50,
                        //                               decoration: BoxDecoration(
                        //                                 borderRadius: BorderRadius.circular(5),
                        //                                 color: Colors.white,
                        //                               ),
                        //                               child: Center(
                        //                                 child: Padding(
                        //                                   padding: const EdgeInsets.all(2.0),
                        //                                   child: IconButton(
                        //                                       alignment: Alignment.center,
                        //                                       onPressed: () {},
                        //                                       icon: const Icon(
                        //                                         // AssetImage('assets/icons/plus.png'),
                        //                                         Icons.home,
                        //                                         size: 25,
                        //                                         color: Colors.black87,
                        //                                       )),
                        //                                 ),
                        //                               ),
                        //                             ),
                        //                           ),
                        //                           Padding(
                        //                             padding:
                        //                                 const EdgeInsets.symmetric(horizontal: 5),
                        //                             child: Container(
                        //                               alignment: Alignment.center,
                        //                               height: 50,
                        //                               width: 50,
                        //                               decoration: BoxDecoration(
                        //                                 borderRadius: BorderRadius.circular(5),
                        //                                 color: Colors.white,
                        //                               ),
                        //                               child: Center(
                        //                                 child: Padding(
                        //                                   padding: const EdgeInsets.all(2.0),
                        //                                   child: IconButton(
                        //                                       alignment: Alignment.center,
                        //                                       onPressed: () {},
                        //                                       icon: const Icon(
                        //                                         // AssetImage('assets/icons/plus.png'),
                        //                                         Icons.notifications,
                        //                                         size: 25,
                        //                                         color: Colors.black87,
                        //                                       )),
                        //                                 ),
                        //                               ),
                        //                             ),
                        //                           ),
                        //                           Padding(
                        //                             padding:
                        //                                 const EdgeInsets.symmetric(horizontal: 5),
                        //                             child: Container(
                        //                               alignment: Alignment.center,
                        //                               height: 50,
                        //                               width: 50,
                        //                               decoration: BoxDecoration(
                        //                                 borderRadius: BorderRadius.circular(5),
                        //                                 color: Colors.white,
                        //                               ),
                        //                               child: Center(
                        //                                 child: Padding(
                        //                                   padding: const EdgeInsets.all(2.0),
                        //                                   child: IconButton(
                        //                                       alignment: Alignment.center,
                        //                                       onPressed: () {},
                        //                                       icon: const Icon(
                        //                                         // AssetImage('assets/icons/plus.png'),
                        //                                         Icons.add_box_rounded,
                        //                                         size: 30,
                        //                                         color: Colors.black87,
                        //                                       )),
                        //                                 ),
                        //                               ),
                        //                             ),
                        //                           ),
                        //                           Padding(
                        //                             padding:
                        //                                 const EdgeInsets.symmetric(horizontal: 5),
                        //                             child: Container(
                        //                               alignment: Alignment.center,
                        //                               height: 50,
                        //                               width: 50,
                        //                               decoration: BoxDecoration(
                        //                                 borderRadius: BorderRadius.circular(5),
                        //                                 color: Colors.white,
                        //                               ),
                        //                               child: Center(
                        //                                 child: Padding(
                        //                                   padding: const EdgeInsets.all(2.0),
                        //                                   child: IconButton(
                        //                                       alignment: Alignment.center,
                        //                                       onPressed: () {},
                        //                                       icon: const Icon(
                        //                                         // AssetImage('assets/icons/plus.png'),
                        //                                         Icons.person,
                        //                                         size: 25,
                        //                                         color: Colors.black87,
                        //                                       )),
                        //                                 ),
                        //                               ),
                        //                             ),
                        //                           ),
                        //                           Padding(
                        //                             padding:
                        //                                 const EdgeInsets.symmetric(horizontal: 5),
                        //                             child: Container(
                        //                               alignment: Alignment.center,
                        //                               height: 50,
                        //                               width: 50,
                        //                               decoration: BoxDecoration(
                        //                                 borderRadius: BorderRadius.circular(5),
                        //                                 color: Colors.white,
                        //                               ),
                        //                               child: Center(
                        //                                 child: Padding(
                        //                                   padding: const EdgeInsets.all(2.0),
                        //                                   child: IconButton(
                        //                                       alignment: Alignment.center,
                        //                                       onPressed: () {},
                        //                                       icon: const Icon(
                        //                                         // AssetImage('assets/icons/plus.png'),
                        //                                         Icons.settings,
                        //                                         size: 25,
                        //                                         color: Colors.black87,
                        //                                       )),
                        //                                 ),
                        //                               ),
                        //                             ),
                        //                           ),
                        //                         ],
                        //                       ),
                        //                     ),
                        //                   ),

                        //                   // SizedBox(
                        //                   //   height: 10,
                        //                   // )
                        //                 ],
                        //               ),
                        //             ),
                        //             Padding(
                        //               padding: const EdgeInsets.only(top: 0),
                        //               child: Container(
                        //                 alignment: Alignment.bottomCenter,
                        //                 height: 20,
                        //                 child: Text(
                        //                   "Login as @iamprathameshmore",
                        //                   style: GoogleFonts.aBeeZee(
                        //                     color: Colors.black,
                        //                     fontWeight: FontWeight.w300,
                        //                     fontSize: 15,
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // );
                      ]),
                ),
              ]),
            ),
          ),
        ));
  }
}
