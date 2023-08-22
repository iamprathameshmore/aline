import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Posts extends StatelessWidget {
  final String message;
  final String user;

  const Posts({super.key, required this.message, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.person,
                                size: 25,
                                color: Colors.grey,
                              )),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '@username',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Text('Location')
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(left: 90),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Container(
                                height: 50,
                                width: 76,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Row(
                                    children: [
                                      const LikeButton(
                                        // crossAxisAlignment: CrossAxisAlignment.center,
                                        size: 25,
                                        isLiked: false,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.bookmark_outline_rounded,
                                            size: 25,
                                            color: Colors.grey,
                                          )),
                                      // IconButton(
                                      //     onPressed: () {},
                                      //     icon: const Icon(
                                      //       Icons.share,
                                      //       size: 25,
                                      //       color: Colors.grey,
                                      //     )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Row(children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 250,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black87,
                                ),
                                // child: const LikeButton(
                                //   crossAxisAlignment: CrossAxisAlignment.center,
                                //   size: 25,
                                //   isLiked: false,
                                // ),
                              ),
                            ),
                          ]))
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 120),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          // ignore: prefer_const_constructors
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 0, left: 10),
                            child: SizedBox(
                              height: 50,
                              width: 230,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                          color: Colors.black)),
                                  fillColor: Colors.grey[300],
                                  filled: true,
                                  hoverColor: Colors.white,
                                  labelText: 'comment',
                                  // suffixIcon: const Icon(Icons.search),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black87,
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.message_rounded,
                                    size: 20,
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
