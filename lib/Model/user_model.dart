enum UserState {pending,blocked, active,inactive}
class UserModel {
  final String uid;
  final String email;
  final String name;
  final String phone;
  final String city;
  final String role;
  final UserState status;
  final String longitude;
  final String latitude;

  UserModel({
    //constructor
   required this.email,
   required this.name,
  required  this.phone,
   required this.city,
  required  this.role,
  required  this.status,
    required this.longitude,
   required this.latitude,
    required this.uid,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'],
      name: map['name'],
      phone: map['phone'],
      city: map['city'],
      role: map['role'],
      status: map['status'],
      longitude: map['longitude'],
        latitude: map['latitude'],
        uid: map['uid'],);
  }
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'phone': phone,
      'city': city,
      'role': role,
      'status': status.toString().split('.').last,
      'longitude': longitude,
      'latitude': latitude,
      'uid': uid,
    };
  }
}
