import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        Text(
          'Доставка',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Card(
          child: ListTile(
            title: Text('Запланирован'),
            subtitle: Text('Демонстрационный статус'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Готовится'),
            subtitle: Text('Статус будет обновлять сотрудник'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Передан курьеру'),
            subtitle: Text('Интеграция пока не подключена'),
          ),
        ),
      ],
    );
  }
}
