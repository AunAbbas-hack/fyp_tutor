//Model to store all the information about the user

class SignupModel {
  String? firstname;
  String? lastname;
  String? email;
  String? phone;
  String? password;
  String? role;   //"Tutor" or "Student"
  String? status;    //"Pending" or "Approved"
  String? city;
  double? longitude;
  double? latitude;
  String? educationLevel;
  List<String>? subjects;

SignupModel({
  this.firstname,
  this.lastname,
  this.email,
  this.phone,
  this.password,
  this.role,
  this.status,
  this.city,
  this.latitude,
  this.longitude,
});

//for firebase storage convert it to map

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'phone': phone,
      'password': password,
      'role': role,
      'status': status,
      'city': city,
      'longitude': longitude,
      'latitude': latitude,
      'educationLevel': educationLevel,
      'subjects': subjects,
    };
  }
}
