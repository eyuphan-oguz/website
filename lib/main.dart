import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:website/firebase_configurations.dart';
import 'package:website/view/home_page_view.dart';

final FirebaseConfigurations _firebaseConfigurations=FirebaseConfigurations();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: _firebaseConfigurations.apiKey,
        appId: _firebaseConfigurations.appId,
        messagingSenderId: _firebaseConfigurations.messagingSenderId,
        projectId: _firebaseConfigurations.projectId)
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eyuphan Oguz',
      home: HomePageView(),
    );
  }
}

