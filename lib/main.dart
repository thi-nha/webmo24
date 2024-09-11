// lib/main.dart
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mensa_app/StartingPage/get_started_page.dart';
import 'package:mensa_app/firebase_options.dart';
import 'views/login_view.dart';
import 'views/food_view.dart';
import 'views/meal_plan_view.dart';
import 'controller/food_controller.dart';
import 'controller/meal_plan_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Initialisierung von FlutterBinding, um sicherzustellen, dass Flutter bereit ist, bevor andere Operationen ausgeführt werden

  // Firebase-Initialisierung für die Login-Datenbank
  await Firebase.initializeApp(
    // Initialisierung von Firebase innerhalb der Flutteranwendung
    // Da initializeApp asynchron ist, wartet await, bis Firebase initialisiert ist, bevor der Code in der nächsten Zeile ausgeführt wird.
    options: DefaultFirebaseOptions
        .currentPlatform, // Übergabe der Konfigurationsoptionen für Firebase
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Essensplan App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetStartedPage(),
      initialRoute: '/food', // Diese Route muss existieren
      routes: {
        '/food': (context) => FoodView(controller: FoodController()),
        '/login': (context) => LoginView(),
        '/meal_plan': (context) =>
            MealPlanView(controller: MealPlanController()),
      },
    );
  }
}
