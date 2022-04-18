part of 'models.dart';

class Users extends Equatable {
  final String id;
  final String email;
  final String name;
  final String profilePicture;
  final String selectedSchool;
  final int balance;

  Users(this.id, this.email,
      {this.name, this.profilePicture, this.balance, this.selectedSchool});

  @override
  String toString() {
    return "[$id] - $name, $email";
  }

  Users copyWith({String name, String profilePicture, int balance}) =>
      Users(this.id, this.email,
          name: name ?? this.name,
          profilePicture: profilePicture ?? this.profilePicture,
          balance: balance ?? this.balance,
          selectedSchool: selectedSchool);

  @override
  List<Object> get props =>
      [id, email, name, profilePicture, selectedSchool, balance];
}
