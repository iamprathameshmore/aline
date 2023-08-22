import 'package:aline/pages/chats.dart';
import 'package:aline/pages/screens/feed.dart';
import 'package:aline/pages/screens/mapschats.dart';
import 'package:aline/pages/screens/notification.dart';
import 'package:aline/pages/screens/profile.dart';
import 'package:aline/pages/screens/synergy.dart';
import 'package:aline/pages/screens/videopage.dart';
// import 'package:aline/pages/screens/vides.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _myPage = PageController(initialPage: 0);
  // ThemeData _themeData = ThemeData();
  // int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey,
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            surfaceTintColor: Colors.black,
            elevation: 2,
            // shape: const CircularNotchedRectangle(),
            child: SizedBox(
              // width: 350,
              child: Container(
                height: 60,
                alignment: AlignmentDirectional.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: TabBar(
                      isScrollable: true,
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                      ),
                      labelColor: Colors.black87,
                      indicatorColor: Colors.black87,
                      tabs: const [
                        Padding(
                          padding: EdgeInsets.all(.0),
                          child: Tab(
                            // child: Text(
                            //   'Home',
                            // ),
                            child: Icon(
                              Icons.home,
                              size: 27,
                            ),
                          ),
                        ),
                        Tab(
                          // child: Text(
                          //   'Map',
                          // ),
                          child: Icon(
                            Icons.map_rounded,
                            size: 27,
                          ),
                        ),
                        Tab(
                          // child: Text(
                          //   'Add',
                          // ),
                          child: Icon(
                            Icons.video_collection,
                            size: 27,
                          ),
                        ),
                        Tab(
                          // child: Text(
                          //   'Group',
                          // ),
                          child: Icon(
                            Icons.group,
                            size: 27,
                          ),
                        ),
                        Tab(
                          // child: Text(
                          //   'Profile',
                          // ),
                          child: Icon(
                            Icons.person,
                            size: 27,
                          ),
                        ),
                      ]),
                ),
              ),
            )),
        body: TabBarView(
          children: [
            const FeedScreen(),
            const MapsScreen(),
            const VideoPage(),
            // Container(
            //   alignment: Alignment.center,
            //   child: const Padding(
            //     padding: EdgeInsets.all(8.0),
            //     child: Center(
            //       child: Text(
            //         " this is the synergy of the friends",
            //         style: TextStyle(fontSize: 50),
            //       ),
            //     ),
            //   ),
            // ),
            FriendsScreen(),
            const ProfilePage(),
          ],
        ),

        // bottomSheet: Text("Home"),
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.only(top: 0),
        //   child: Container(
        //     color: Colors.white,
        //     height: 35,
        //     alignment: Alignment.bottomCenter,
        //     child: Column(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(0),
        //           child: Container(
        //             alignment: Alignment.bottomCenter,
        //             height: 20,
        //             child: Text(
        //               "Login as @username",
        //               style: GoogleFonts.aBeeZee(
        //                 color: Colors.black87,
        //                 // fontWeight: FontWeight.w300,s
        //                 // letterSpacing: 1.5,
        //                 wordSpacing: 5,
        //                 // overflow: TextOverflow.ellipsis,
        //                 fontSize: 16,
        //                 // fontFamily: AutofillHints.email
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
