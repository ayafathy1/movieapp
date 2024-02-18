class ProfileModel {



  // ignore: non_constant_identifier_names
  final String? FullName;
  // ignore: non_constant_identifier_names
  final String? Password;
  // ignore: non_constant_identifier_names
  final String? Email;
  // ignore: non_constant_identifier_names
  final String? PhoneNumber;

  // ignore: non_constant_identifier_names
  ProfileModel({ this.FullName, this.Password, this.Email, this.PhoneNumber, } );

  factory ProfileModel.fromMap(Map<dynamic, dynamic> map) {
    return ProfileModel(
      FullName: map['FullName'] ?? '',
      Password:map['Password'] ?? '',
      Email:map['Email'] ?? '',
      PhoneNumber:map[' PhoneNumber'] ?? '',
    );
  }
  Map<String,dynamic> toJson()=>{
    "FullName":FullName,
    "Password":Password,
    "Email":Email,
    "PhoneNumber":PhoneNumber,

  };}