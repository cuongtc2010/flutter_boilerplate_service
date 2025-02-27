import 'package:beta_ai/core/config/routes.dart';
import 'package:beta_ai/core/config/theme.dart';
import 'package:beta_ai/presentation/widgets/custom_dialog.dart';
import 'package:beta_ai/presentation/widgets/lottie_animation.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DonetWidget extends StatelessWidget {
  const DonetWidget({super.key});

  final String donateUrl = "https://buymeacoffee.com/betaai";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, AppRoutes.inappWebview, arguments: {AppRoutes.argUrl: donateUrl});
        _showDialog(context);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: const [
            AppShadow.shadow,
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Text(
                  'donet.description'.tr(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
            const LottieAnimation(
              animationName: 'donet',
            )
          ],
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog(
          title: Text('donet.title'.tr()),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('donet.dialog_content'.tr()),
              const SizedBox(height: 10),
              // Button
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buyCoffeeButton),
                      onPressed: () async {
                        // Open the webview
                        await Navigator.pushNamed(context, AppRoutes.inappWebview,
                            arguments: {AppRoutes.argUrl: donateUrl});
                        Navigator.pop(context);
                      },
                      child: Text('Buy me a coffee'.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.paypalButton),
                      onPressed: () async {
                        // Open the webview
                        await Navigator.pushNamed(context, AppRoutes.inappWebview,
                            arguments: {AppRoutes.argUrl: donateUrl});
                        Navigator.pop(context);
                      },
                      child: Text('PayPal'.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.momoButton),
                      onPressed: () async {
                        // Open the webview
                        await Navigator.pushNamed(context, AppRoutes.inappWebview,
                            arguments: {AppRoutes.argUrl: donateUrl});
                        Navigator.pop(context);
                      },
                      child: Text('Momo'.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.white)),
                    ),
                  ),
                ],
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(
                backgroundColor: AppColors.primary,
              ),
              child: Text(
                'Close',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        );
      },
    );
  }
}
