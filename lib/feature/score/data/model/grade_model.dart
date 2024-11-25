class GradeModel {
  String studentName;
  String courseName;
  String semesterName;
  String gradeTypeName;
  double gradeValue;
  DateTime gradeDate;

  GradeModel({
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
      studentName: json['studentName'] ?? '',
      courseName: json['courseName'] ?? '',
      semesterName: json['semesterName'] ?? '',
      gradeTypeName: json['gradeTypeName'] ?? '',
      gradeValue: json['gradeValue'] ?? '',
      gradeDate: DateTime.parse(json['gradeDate']),
    );
  }
}
