import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:gk_educational_charity_org/screens/splashScreen.dart';
import 'package:gk_educational_charity_org/screens/test.dart';
import 'package:provider/provider.dart';

import 'providers/my_provider.dart';

// void main() => runApp(const MyApp());

void main() async {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Initialize the notification plugin
  await flutterLocalNotificationsPlugin.initialize(
      AndroidInitializationSettings('app_icon') as InitializationSettings);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
