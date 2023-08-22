// ignore: file_names
import 'dart:async';

import 'package:aline/pages/home.dart';
import 'package:flutter/material.dart';

class SplachScreenPage extends StatefulWidget {
  const SplachScreenPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplachScreenPage createState() => _SplachScreenPage();
}

class _SplachScreenPage extends State<SplachScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const MyHomePage(title: ""))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
