import 'package:beta_ai/presentation/widgets/ai_project_list_widget.dart';
import 'package:beta_ai/presentation/widgets/donet_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String get _greetingTitle {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 12) {
      return 'greeting.morning'.tr();
    } else if (hour >= 12 && hour < 18) {
      return 'greeting.afternoon'.tr();
    } else {
      return 'greeting.night'.tr();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Check dark mode
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'greeting.subtitle'.tr(args: [_greetingTitle]),
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DonetWidget(),
          ),
          const SizedBox(height: 24),
          const AIProjectListWidget(),
        ],
      ),
    );
  }
}
