class ProfileModel {
  int id;
  String studentCode;
  int userId;
  String fullName;
  DateTime birthDate;
  String gender;
  String nationality;
  String hometown;
  String address;
  String phoneNumber;
  String email;
  String major;

  ProfileModel({
    required this.id,
    required this.studentCode,
    required this.userId,
    required this.fullName,
    required this.birthDate,
    required this.gender,
    required this.nationality,
    required this.hometown,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.major,
  });

  // Chuyển đổi từ JSON sang đối tượng ProfileModel
  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['id'],
      studentCode: json['studentCode'],
      userId: json['userId'],
      fullName: json['fullName'],
      birthDate: DateTime.parse(json['birthDate']),
      gender: json['gender'],
      nationality: json['nationality'],
      hometown: json['hometown'],
      address: json['address'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      major: json['major'],
    );
  }
}
