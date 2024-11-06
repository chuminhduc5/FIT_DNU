class GradeModel {
  int id;
  String studentName;
  String courseName;
  String semesterName;
  String gradeTypeName;
  double gradeValue;
  DateTime gradeDate;

  GradeModel({
    required this.id,
    required this.studentName,
    required this.courseName,
    required this.semesterName,
    required this.gradeTypeName,
    required this.gradeValue,
    required this.gradeDate,
  });

  // Chuyển đổi từ JSON sang đối tượng GradeModel
  factory GradeModel.fromJson(Map<String, dynamic> json) {
    return GradeModel(
      id: json['id'],
      studentName: json['studentName'],
      courseName: json['courseName'],
      semesterName: json['semesterName'],
      gradeTypeName: json['gradeTypeName'],
      gradeValue: json['gradeValue'],
      gradeDate: DateTime.parse(json['gradeDate']),
    );
  }

  // Chuyển đổi từ đối tượng GradeModel sang JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'studentName': studentName,
      'courseName': courseName,
      'semesterName': semesterName,
      'gradeTypeName': gradeTypeName,
      'gradeValue': gradeValue,
      'gradeDate': gradeDate.toIso8601String(), // Định dạng ngày giờ theo ISO 8601
    };
  }
}
