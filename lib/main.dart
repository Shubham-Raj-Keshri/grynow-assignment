import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stall/page/mobile-auth.dart';
import 'package:stall/service/mobile-auth-service.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MobileAuthService mobileAuthService = MobileAuthService();
  Widget currentPage = const MobileAuth();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nisa Hut',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(Colors.black),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: currentPage,
    );
  }
}

