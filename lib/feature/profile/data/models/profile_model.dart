class ProfileModel {
  int id;
  String studentCode;

  ProfileModel({
    required this.id,
    required this.studentCode,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json){
    return ProfileModel(
      id: json['id'],
      studentCode: json['studentCode']
    );
  }
}