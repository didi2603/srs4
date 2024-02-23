import 'package:flutter/material.dart';
import 'package:flutter_application_5/24.dart';
// Импортируем второй экран

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(), // Указываем первый экран как основной
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главный экран')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Переходим ко второму экрану и передаем данные
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen(data: 'Данные с первого экрана')),
            );
          },
          child: const Text('Перейти к следующему экрану'),
        ),
      ),
    );
  }
}
