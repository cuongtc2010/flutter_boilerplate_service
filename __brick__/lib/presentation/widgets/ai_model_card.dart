import 'package:beta_ai/core/config/theme.dart';
import 'package:beta_ai/domain/entities/ai_entity.dart';
import 'package:flutter/material.dart';

class AIModelCard extends StatelessWidget {
  final AIEntity aiModel;
  final bool isDark;
  final VoidCallback? onTap;
  final double width; 

  const AIModelCard({
    super.key,
    required this.aiModel,
    this.isDark = false,
    this.onTap,
    this.width = 100,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, aiModel.screen_name);
      },
      child: Container(
        width: width,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isDark ? AppColors.secondary : AppColors.background,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            AppShadow.shadow
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isDark ? AppColors.background.withOpacity(0.1) : AppColors.secondary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                IconData(
                  int.parse(aiModel.icon),
                  fontFamily: 'MaterialIcons',
                ),
                color: isDark ? AppColors.background : AppColors.secondary,
                size: 32,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              aiModel.ai_name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isDark ? AppColors.background : AppColors.text,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
