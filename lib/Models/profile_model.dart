class ProfileModel {



  final String? FullName;
  final String? Password;
  final String? Email;
  final String? PhoneNumber;

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