class ProfileModel {
  int id;
  String studentCode;
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
    print('Dữ liệu JSON nhận được: $json'); // Log dữ liệu JSON
    return ProfileModel(
      id: json['id'] != null
          ? (json['id'] is int
              ? json['id']
              : int.tryParse(json['id'].toString()) ?? 0)
          : 0,
      studentCode: json['studentCode'] ?? '',
      fullName: json['fullName'] ?? '',
      birthDate: json['birthDate'] != null
          ? DateTime.tryParse(json['birthDate']) ?? DateTime(1900, 1, 1)
          : DateTime(2024, 1, 1),
      gender: json['gender'] ?? '',
      nationality: json['nationality'] ?? '',
      hometown: json['hometown'] ?? '',
      address: json['address'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      email: json['email'] ?? '',
      major: json['major'] ?? '',
    );
  }
}
