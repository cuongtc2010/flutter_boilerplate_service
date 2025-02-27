// ignore_for_file: constant_identifier_names

import 'package:beta_ai/domain/entities/ai_entity.dart';

class AIModel {
  final String id;
  final String aiName;
  final String icon;
  final String screenName;

  AIModel({
    required this.id,
    required this.aiName,
    required this.icon,
    required this.screenName,
  });

  // Factory constructor to create AIModel from JSON
  factory AIModel.fromJson(Map<String, dynamic> json) {
    return AIModel(
      id: json[AIEntity.KEY_ID] as String,
      aiName: json[AIEntity.KEY_AI_NAME] as String,
      icon: json[AIEntity.KEY_ICON] as String,
      screenName: json[AIEntity.KEY_SCREEN_NAME] as String,
    );
  }

  // Convert AIModel to AIEntity
  AIEntity toEntity() {
    return AIEntity(
      id: id,
      ai_name: aiName,
      icon: icon,
      screen_name: screenName,
    );
  }
}
