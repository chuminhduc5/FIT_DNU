class CourseModel {
  final int courseId;
  final String courseName;
  final String description;
  final int credits;
  final String major;

  const CourseModel({
    required this.courseId,
    required this.courseName,
    required this.description,
    required this.credits,
    required this.major,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      courseId: json['courseId'],
      courseName: json['courseName'],
      description: json['description'],
      credits: json['credits'],
      major: json['major'],
    );
  }
}
