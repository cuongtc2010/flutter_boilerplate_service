import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;
  final bool showCloseButton;
  const CustomDialog({super.key, this.title, this.content, this.actions, this.showCloseButton=true});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      titlePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      contentPadding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (title != null) title!,
          if (showCloseButton)
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(CupertinoIcons.clear_circled_solid),
            ),
        ],
      ),
      content: content,
      actions: actions,
    );
  }
} 
