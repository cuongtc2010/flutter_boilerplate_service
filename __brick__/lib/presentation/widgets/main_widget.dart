// create a common main widget for app
import 'package:beta_ai/presentation/widgets/app_bar_widget.dart';
import 'package:beta_ai/presentation/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  final Widget body;
  final AppBarWidget? appBar;
  final CustomNavigationBar? bottomNavigationBar;
  const MainWidget(
      {super.key,
      required this.body,
      this.appBar,
      this.bottomNavigationBar});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: widget.body,
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
