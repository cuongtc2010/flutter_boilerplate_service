import 'package:beta_ai/presentation/pages/home/home_page.dart';
import 'package:beta_ai/presentation/pages/my_progress/my_progress_page.dart';
import 'package:beta_ai/presentation/pages/profile/profile_page.dart';
import 'package:beta_ai/presentation/widgets/app_bar_widget.dart';
import 'package:beta_ai/presentation/widgets/main_widget.dart';
import 'package:beta_ai/presentation/widgets/navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const MyProgressPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      appBar: AppBarWidget(
        centerTitle: false,
        title: 'greeting.title'.tr(args: ['Jenifer']),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.grid_view_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
