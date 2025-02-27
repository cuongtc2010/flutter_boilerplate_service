import 'package:beta_ai/core/config/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.secondary,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: AppColors.background,
      unselectedItemColor: AppColors.unselected,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home_rounded),
          activeIcon: const Icon(Icons.home_rounded, size: 28),
          label: 'navigation.home'.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.trending_up_rounded),
          activeIcon: const Icon(Icons.trending_up_rounded, size: 28),
          label: 'navigation.my_progress'.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person_outline_rounded),
          activeIcon: const Icon(Icons.person_rounded, size: 28),
          label: 'navigation.profile'.tr(),
        ),
      ],
    );
  }
}
