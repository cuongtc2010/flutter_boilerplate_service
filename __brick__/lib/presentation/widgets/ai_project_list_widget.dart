import 'package:flutter/material.dart';
import 'package:beta_ai/data/models/ai_model.dart';
import 'package:beta_ai/presentation/widgets/ai_model_card.dart';
import 'package:easy_localization/easy_localization.dart';

class AIProjectListWidget extends StatelessWidget {
  const AIProjectListWidget({super.key});

  List<AIModel> get _aiModels => [
    AIModel(
      id: '1',
      aiName: 'Face Swap',
      screenName: '/face_swap',
      icon: '0xe0e6', // chat icon
    ),
    AIModel(
      id: '2',
      aiName: 'Suno AI',
      screenName: '/suno_ai',
      icon: '0xe432', // smart toy icon
    ),
    AIModel(
      id: '3',
      aiName: 'Image Generation',
      screenName: '/image_generation',
      icon: '0xe0e6', // psychology icon
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'ai_models.title'.tr(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.spaceBetween,
              children: _aiModels.map((aiModel){
                return AIModelCard(
                  aiModel: aiModel.toEntity(),
                  width: MediaQuery.of(context).size.width /  2 - 32,
                );
              }).toList(),
            )
          ),
        ),
      ],
    );
  }
}
