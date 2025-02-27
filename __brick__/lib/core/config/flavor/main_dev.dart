import 'package:beta_ai/core/config/env.dart';
import 'package:beta_ai/main.dart';

void main() {
  Env.setEnvironment(Environment.Dev);
  mainDelegate();
}
