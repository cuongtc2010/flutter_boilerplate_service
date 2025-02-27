import 'package:beta_ai/core/config/theme.dart';
import 'package:beta_ai/core/providers/theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;
    
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(
            'settings.title'.tr(),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          _SettingItem(
            icon: Icons.palette_outlined,
            title: 'settings.theme'.tr(),
            trailing: Switch(
              value: isDarkMode,
              onChanged: (_) => themeProvider.toggleTheme(),
              activeColor: AppColors.primary,
            ),
          ),
          const Divider(height: 32),
          _SettingItem(
            icon: Icons.language_outlined,
            title: 'settings.language'.tr(),
            trailing: DropdownButton<String>(
              value: context.locale.languageCode,
              underline: const SizedBox(),
              items: [
                DropdownMenuItem(
                  value: 'en',
                  child: Text('settings.languages.english'.tr()),
                ),
                DropdownMenuItem(
                  value: 'vi',
                  child: Text('settings.languages.vietnamese'.tr()),
                ),
              ],
              onChanged: (value) {
                if (value != null) {
                  context.setLocale(Locale(value));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget trailing;

  const _SettingItem({
    required this.icon,
    required this.title,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.primary,
          size: 24,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        trailing,
      ],
    );
  }
}
