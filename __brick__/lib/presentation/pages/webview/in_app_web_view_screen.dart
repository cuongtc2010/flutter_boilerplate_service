import 'package:beta_ai/presentation/widgets/app_bar_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppWebViewScreen extends StatefulWidget {
  final String url;
  const InAppWebViewScreen({super.key, required this.url});

  @override
  State<InAppWebViewScreen> createState() => _InAppWebViewScreenState();
}

class _InAppWebViewScreenState extends State<InAppWebViewScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'donet.title'.tr(),
        centerTitle: false,
      ),
      body: IndexedStack(
        index: _index,
        children: [
          const Center(
            child: CircularProgressIndicator(),
          ),
          InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri(widget.url)),
            onProgressChanged: (controller, progress) {
              if (progress == 100) {
                setState(() {
                  _index = 1;
                });
              }
            },
          )
        ],
      )
    );
  }
}