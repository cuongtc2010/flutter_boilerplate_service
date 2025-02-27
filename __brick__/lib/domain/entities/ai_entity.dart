import 'package:equatable/equatable.dart';

class AIEntity extends Equatable {
  final String id;
  final String ai_name;
  final String icon;
  final String screen_name;

  const AIEntity({
    required this.id,
    required this.ai_name,
    required this.icon,
    required this.screen_name,
  });

  static const KEY_ID = 'id';
  static const KEY_AI_NAME = 'ai_name';
  static const KEY_ICON = 'icon';
  static const KEY_SCREEN_NAME = 'screen_name';

  @override
  List<Object?> get props => [id, ai_name, screen_name];

  @override
  String toString() {
    return 'AIEntity(id: $id, ai_name: $ai_name, icon: $icon, screen_name: $screen_name)';
  }
}