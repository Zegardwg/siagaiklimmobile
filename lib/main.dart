import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'home.dart';
import 'petacuaca.dart';
import 'peringatan.dart';
import 'pelaporanbencana.dart';
import 'user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routes Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/petacuaca': (context) => const PetaCuacaScreen(),
        '/peringatan': (context) => const PeringatanScreen(),
        '/pelaporanbencana': (context) => const PelaporanBencanaScreen(),
        '/user': (context) => const UserScreen(),
      },
    );
  }
}
