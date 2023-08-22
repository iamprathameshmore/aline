import 'package:flutter/material.dart';

class NotiScreen extends StatefulWidget {
  const NotiScreen({super.key});

  @override
  State<NotiScreen> createState() => _NotiScreenState();
}

class _NotiScreenState extends State<NotiScreen> {
  final List<String> items = List<String>.generate(20, (i) => '$i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Notifications',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        // toolbarHeight: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5, right: 3, bottom: 60, left: 3),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              // Padding(
              //   padding:
              //       const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
              //   child: SizedBox(
              //     height: 40,
              //     child: TextField(
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(50),
              //             borderSide: const BorderSide(color: Colors.black)),
              //         fillColor: Colors.grey[300],
              //         filled: true,
              //         hoverColor: Colors.white,
              //         labelText: 'Serach a Friend',
              //         suffixIcon: const Icon(Icons.search),
              //         // prefixIcon: const Icon(
              //         //   Icons.emoji_emotions,
              //         //   size: 30,
              //         // ),
              //       ),
              //     ),
              //   ),
              // ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black87,
                      child: Text(
                        items[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text('Notifiaction ${items[index]}'),
                    subtitle: const Text('Notification Description'),
                    trailing: const Icon(Icons.message),
                  );
                },
              ),
              // SizedBox(
              //   height: 60,
              // )
            ],
          ),
        ),
      ),
      //   bottomSheet: Padding(
      //     padding: const EdgeInsets.only(top: 0),
      //     child: Container(
      //       height: 52,
      //       alignment: Alignment.bottomCenter,
      //       child: Column(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(5),
      //             child: Container(
      //               alignment: Alignment.bottomCenter,
      //               height: 20,
      //               child: const Text(
      //                 "Login as @iamprathameshmore",
      //                 style: TextStyle(
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.w300,
      //                     fontSize: 15,
      //                     fontFamily: AutofillHints.email),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // );
    );
  }
}
