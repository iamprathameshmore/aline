// import 'package:aline/pages/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:aline/pages/home.dart';
import 'package:aline/theme/thememanager.dart';
import 'package:aline/theme/themes.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'pages/screens/login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Future.delayed(const Duration(seconds: 3));
  // FlutterNativeSplash.remove();
  runApp(const Aline());
}

// void main() {
//   runApp(const Aline());
// }

class Aline extends StatefulWidget {
  const Aline({super.key});

  @override
  State<Aline> createState() => _AlineState();
}

class _AlineState extends State<Aline> {
  @override
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
