import 'package:flutter/material.dart';

import 'screens/family_screen.dart';
import 'screens/home_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/status_screen.dart';

void main() => runApp(const JantokPreview());

class JantokPreview extends StatelessWidget {
  const JantokPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JANTOK preview',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F3D2E)),
        useMaterial3: true,
      ),
      home: const PreviewShell(),
    );
  }
}

class PreviewShell extends StatefulWidget {
  const PreviewShell({super.key});
  @override
  State<PreviewShell> createState() => _PreviewShellState();
}

class _PreviewShellState extends State<PreviewShell> {
  int index = 0;
  final screens = const [
    HomeScreen(),
    FamilyScreen(),
    MenuScreen(),
    StatusScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JANTOK · прототип')),
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) => setState(() => index = value),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Главная',
          ),
          NavigationDestination(
            icon: Icon(Icons.groups_outlined),
            label: 'Семья',
          ),
          NavigationDestination(
            icon: Icon(Icons.restaurant_menu),
            label: 'Меню',
          ),
          NavigationDestination(
            icon: Icon(Icons.local_shipping_outlined),
            label: 'Доставка',
          ),
        ],
      ),
    );
  }
}
