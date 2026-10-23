import 'package:flutter/material.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        Text(
          'Моя семья',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Card(
          child: ListTile(
            title: Text('Балгын'),
            subtitle: Text('Анкета · пример'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Айым'),
          subtitle: Text('Аллергия на молоко · пример'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Али'),
            subtitle: Text('Анкета требует проверки · пример'),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            'Добавление и хранение анкет будут реализованы после проверки требований.',
          ),
        ),
      ],
    );
  }
}
