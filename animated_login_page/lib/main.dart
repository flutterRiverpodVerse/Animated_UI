import 'package:animated_login_page/animated_login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Login Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[800],
        colorScheme: const ColorScheme.light(
          primary: Colors.blue,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              decorationColor: Colors.blue,
            ),
        inputDecorationTheme: const InputDecorationTheme(
          prefixIconColor: Colors.black54,
          suffixIconColor: Colors.black54,
          iconColor: Colors.black54,
          labelStyle: TextStyle(
            color: Colors.black54,
          ),
          hintStyle: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginScreen(),
        '/forgotPass': (BuildContext context) => const ForgotPasswordScreen(),
      },
    );
  }
}
