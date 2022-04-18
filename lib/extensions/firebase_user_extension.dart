part of 'extensions.dart';

extension FirebaseUserExtension on User {
  Users convertToUser({
    String name = "No Name",
    List<String> selectedGenres = const [],
    String selectedSchool = "",
    int balance = 20,
  }) =>
      Users(
        this.uid,
        this.email,
        name: name,
        balance: balance,
        selectedSchool: selectedSchool,
      );

  Future<Users> fromFireStore() async => await UserServices.getUser(this.uid);
}
