import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(bottom: 0),
          child: PageView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                color: Colors.grey,
                child: Center(child: Text('swipe-up page no.1')),
              ),
              Container(
                color: Colors.grey,
                child: Center(child: Text('swipe-up page no.2')),
              ),
              Container(
                color: Colors.grey,
                child: Center(child: Text('swipe-up page no.3')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
