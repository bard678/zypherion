import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zypherion/login_screen.dart';
import 'package:zypherion/mobilescreen.dart';
import 'package:zypherion/responsive.dart';
import 'package:zypherion/webscreen.dart';

void main()async {
if(kIsWeb)
{
  WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(options:const FirebaseOptions(
    apiKey: "AIzaSyBgnyCwvjCBbIClJuyxA-KouhJF0Cg4K4s",
    authDomain: "zypherion-de748.firebaseapp.com",
    projectId: "zypherion-de748",
    storageBucket: "zypherion-de748.appspot.com",
    messagingSenderId: "1072346609868",
    appId: "1:1072346609868:web:78aaed1e3453bd85a5ea69",));
}
else{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
}
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColorLight: Colors.black87,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return LoginScreen();
    // return ResponsiveLay(mobileScreen: MobileScreenLayout(), webScreen: WebScreenLayout());
  }
}
