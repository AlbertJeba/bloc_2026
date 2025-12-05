import 'package:bloc_2026/core/extension/roles.dart';
import 'package:bloc_2026/shared/models/user_data.dart';

class UserPreferences {
  UserPreferences._();

  static final UserPreferences _instance = UserPreferences._();

  static UserPreferences get instance => _instance;

  UserData? _user;
  UserRole? _userRole;
  String? _fcmToken;
  bool notificationReadIcon = false;

  void setUser(UserData user) {
    _user = user;
  }

  UserData? getUser() {
    return _user;
  }

  void setUserRole(UserRole role) {
    _userRole = role;
  }

  UserRole? getUserRole() {
    return _userRole;
  }

  String? getFCMToken() {
    return _fcmToken;
  }

  void setFCMToken(String token) {
    _fcmToken = token;
  }

  void setNotificationReadIcon(bool value) {
    notificationReadIcon = value;
  }

  bool getNotificationReadIcon() {
    return notificationReadIcon;
  }

  void clearPreferences() {
    _user = null;
    _userRole = null;
    _fcmToken = null;
  }
}
