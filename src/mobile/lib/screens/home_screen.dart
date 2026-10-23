import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        Text(
          'Доброе утро, Балгын',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 18),
        Card(
          child: ListTile(
            title: Text('Ближайшая доставка'),
            subtitle: Text('Демонстрационные данные · 07:00–09:00'),
            trailing: Icon(Icons.local_shipping_outlined),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Питание на день'),
            subtitle: Text(
              'Выберите участника семьи, чтобы проверить меню и ограничения.',
            ),
          ),
        ),
      ],
    );
  }
}
