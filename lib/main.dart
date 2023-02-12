import 'package:flutter/material.dart';

import 'features/beers/presentation/routes/routes.dart';
import 'injector.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initialRoute,
      routes: Routes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


