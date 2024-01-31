class UserAuthModel{

  final String? emailAddress;
  final String ? password;

  UserAuthModel({required this.emailAddress, required this.password});


  factory UserAuthModel.fromjson(Map<String, dynamic> json) => UserAuthModel(
    emailAddress : json["emailAddress"],
    password  : json["password"],

  );

  Map<String, dynamic>  tojson() =>{
    "emailAddress" :  emailAddress ,
    "password" : password,

  };


}