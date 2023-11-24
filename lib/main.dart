import 'package:flutter/material.dart';
import 'package:personal_expense_tracker/Provider/provider.dart';
import 'package:personal_expense_tracker/Utils/Routs/routs_name.dart';
import 'package:provider/provider.dart';

import 'Utils/Routs/routs.dart';


void main() {
  var yourProvider = YourProvider();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: yourProvider),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.home,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
