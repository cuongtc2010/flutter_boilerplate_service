import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  static final AppStorage _instance = AppStorage._internal();
  factory AppStorage() => _instance;
  AppStorage._internal();

  static final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  static SharedPreferences? _prefs;

  /// Khởi tạo SharedPreferences
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// Lưu dữ liệu kiểu String
  Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  /// Lấy dữ liệu kiểu String
  String? getString(String key) {
    return _prefs?.getString(key);
  }

  /// Lưu dữ liệu kiểu int
  Future<void> setInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  /// Lấy dữ liệu kiểu int
  int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  /// Lưu dữ liệu kiểu bool
  Future<void> setBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  /// Lấy dữ liệu kiểu bool
  bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  /// Lưu dữ liệu kiểu double
  Future<void> setDouble(String key, double value) async {
    await _prefs?.setDouble(key, value);
  }

  /// Lấy dữ liệu kiểu double
  double? getDouble(String key) {
    return _prefs?.getDouble(key);
  }

  /// Lưu danh sách String
  Future<void> setStringList(String key, List<String> value) async {
    await _prefs?.setStringList(key, value);
  }

  /// Lấy danh sách String
  List<String>? getStringList(String key) {
    return _prefs?.getStringList(key);
  }

  /// Xóa dữ liệu theo key
  Future<void> remove(String key) async {
    await _prefs?.remove(key);
  }

  /// Xóa toàn bộ dữ liệu
  Future<void> clear() async {
    await _prefs?.clear();
  }

  /// Lưu dữ liệu bảo mật
  Future<void> setSecureData(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  /// Lấy dữ liệu bảo mật
  Future<String?> getSecureData(String key) async {
    return await _secureStorage.read(key: key);
  }

  /// Xóa dữ liệu bảo mật
  Future<void> removeSecureData(String key) async {
    await _secureStorage.delete(key: key);
  }
}
