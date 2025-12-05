enum UserRole { admin, customer }

extension UserRoleExtension on UserRole {
  int get id {
    switch (this) {
      case UserRole.admin:
        return 1;
      case UserRole.customer:
        return 2;
    }
  }

  static UserRole fromId(int id) {
    switch (id) {
      case 1:
        return UserRole.admin;
      case 2:
        return UserRole.customer;
      default:
        throw Exception("Invalid user role ID");
    }
  }
}
