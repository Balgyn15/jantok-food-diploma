import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        Text(
          'Меню',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Card(
          child: ListTile(
            title: Text('Омлет с овощами'),
            subtitle: Text('Пример блюда · Балгын'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Блюдо с орехами'),
            subtitle: Text('Недоступно для Айым: конфликт с анкетой'),
            trailing: Icon(Icons.block),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            'Состав и аллергены должны быть подтверждены кухней до реального заказа.',
          ),
        ),
      ],
    );
  }
}
