import 'package:flutter/material.dart';
import 'package:beta_ai/core/config/theme.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;

  const AppBarWidget({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return AppBar(
      surfaceTintColor: AppColors.background,
      shadowColor: isDark ? Colors.transparent : AppColors.shadow,
      backgroundColor: isDark ? AppColors.backgroundDark : AppColors.background,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
          color: AppColors.secondary
        ),
      ),
      elevation: 0,
      centerTitle: centerTitle,
      leading: leading ??
          (Navigator.canPop(context)
              ? IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                )
              : null),
      actions: actions,
      iconTheme: const IconThemeData(
        color: AppColors.secondary
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
