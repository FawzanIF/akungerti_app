part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(Users user) async {
    _userCollection.doc(user.id).set({
      'email': user.email,
      'name': user.name,
      'balance': user.balance,
      'selectedSchool': user.selectedSchool,
      'profilePicture': user.profilePicture ?? ""
    });
  }

  static Future<Users> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    return Users(id, snapshot.data()['email'],
        balance: snapshot.data()['balance'],
        profilePicture: snapshot.data()['profilePicture'],
        selectedSchool: snapshot.data()['selectedSchool'],
        name: snapshot.data()['name']);
  }
}
