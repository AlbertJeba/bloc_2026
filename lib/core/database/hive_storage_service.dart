import 'dart:async';
import 'dart:convert';
import 'package:bloc_2026/core/constants/constant.dart';
import 'package:bloc_2026/core/database/storage_service.dart';
import 'package:bloc_2026/shared/models/user_data.dart';
import 'package:hive_flutter/hive_flutter.dart';


class HiveService implements StorageService {
  Box? box;

  final Completer<Box> initCompleter = Completer<Box>();

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    initCompleter.complete(Hive.openBox('bloc2025HiveService'));
  }

  @override
  bool get hasInitialized => initCompleter.isCompleted;

  @override
  Future<Object?> get(String key) async {
    box = await initCompleter.future;
    return box?.get(key);
  }

  @override
  Future<void> clear() async {
    box = await initCompleter.future;
    await box?.put('user', {}.toString());
    await box?.clear();
  }

  @override
  Future<bool> has(String key) async {
    box = await initCompleter.future;
    return box?.containsKey(key) ?? false;
  }

  @override
  Future<bool> remove(String key) async {
    box = await initCompleter.future;
    await box?.delete(key);
    return true;
  }

  @override
  Future<bool> set(String key, data) async {
    box = await initCompleter.future;
    await box?.put(key, data.toString());
    return true;
  }

  @override
  Future<bool> setUser(UserData data) async {
    box = await initCompleter.future;
    await box?.put(userDbKey, jsonEncode(data.toJson()));
    return true;
  }

  @override
  Future<UserData> getUser() async {
    Object? data = await box?.get(userDbKey);
    dynamic userJson = jsonDecode(data.toString());
    return UserData.fromJson(userJson);
  }
}
