import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String data;

  const SecondScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Второй экран')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Полученные данные: $data'),
            ElevatedButton(
              onPressed: () {
                // Возвращаем данные на первый экран при помощи Navigator.pop
                Navigator.pop(context, 'Данные с второго экрана');
              },
              child: const Text('Вернуться'),
            ),
          ],
        ),
      ),
    );
  }
}
