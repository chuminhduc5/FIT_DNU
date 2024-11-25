// // import 'package:fit_dnu/core/config/theme/app_colors.dart';
// // import 'package:fit_dnu/feature/score/presentation/blocs/grade_cubit/grade_cubit.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// //
// // class ScoreScreen extends StatefulWidget {
// //   const ScoreScreen({Key? key}) : super(key: key);
// //
// //   @override
// //   State<ScoreScreen> createState() => _ScoreScreenState();
// // }
// //
// // class _ScoreScreenState extends State<ScoreScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         backgroundColor: AppColors.bgWhite,
// //         body: BlocProvider(
// //           create: (context) => GradeCubit()..getGrade(),
// //           child: BlocBuilder<GradeCubit, GradeState>(
// //             builder: (context, state) {
// //               if (state is GradeLoading) {
// //                 return const Center(
// //                   child: CircularProgressIndicator(
// //                     color: AppColors.bgRed,
// //                   ),
// //                 );
// //               } else if (state is GradeSuccess) {
// //                 return SingleChildScrollView(
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Padding(
// //                         padding: const EdgeInsets.all(10.0),
// //                         child: Container(
// //                           padding: const EdgeInsets.all(10.0),
// //                           decoration: BoxDecoration(
// //                             color: Colors.white,
// //                             borderRadius: BorderRadius.circular(8.0),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: Colors.grey.withOpacity(0.3),
// //                                 spreadRadius: 2,
// //                                 blurRadius: 5,
// //                               ),
// //                             ],
// //                           ),
// //                           child: const Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 'Kỳ học: Học kỳ 2 - Năm 2020',
// //                                 style: TextStyle(
// //                                     fontSize: 16, fontWeight: FontWeight.bold),
// //                               ),
// //                               SizedBox(height: 8),
// //                               Row(
// //                                 mainAxisAlignment:
// //                                     MainAxisAlignment.spaceBetween,
// //                                 children: [
// //                                   Text('Số TC: 17',
// //                                       style: TextStyle(color: Colors.red)),
// //                                   Text('Điểm tổng kết: 0',
// //                                       style: TextStyle(color: Colors.red)),
// //                                   Text('Điểm GPA: Trống',
// //                                       style: TextStyle(color: Colors.red)),
// //                                 ],
// //                               ),
// //                               SizedBox(height: 4),
// //                               Row(
// //                                 mainAxisAlignment:
// //                                     MainAxisAlignment.spaceBetween,
// //                                 children: [
// //                                   Text('Số TC hoàn thành: 17',
// //                                       style: TextStyle(color: Colors.red)),
// //                                   Text('TC chưa đạt: 0',
// //                                       style: TextStyle(color: Colors.red)),
// //                                 ],
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                       const SizedBox(height: 16),
// //                       // Data Table Section
// //                       LayoutBuilder(
// //                         builder:
// //                             (BuildContext context, BoxConstraints constraints) {
// //                           return SingleChildScrollView(
// //                             scrollDirection: Axis.horizontal,
// //                             // Allow horizontal scrolling
// //                             child: DataTable(
// //                               columnSpacing: constraints.maxWidth * 0.03,
// //                               headingRowColor: WidgetStateProperty.all<Color>(
// //                                   AppColors.bgRed),
// //                               headingTextStyle: const TextStyle(
// //                                 fontWeight: FontWeight.bold,
// //                                 color: Colors.white,
// //                               ),
// //                               columns: const [
// //                                 DataColumn(
// //                                   label: Text(
// //                                     'STT',
// //                                     style:
// //                                         TextStyle(fontWeight: FontWeight.bold),
// //                                   ),
// //                                 ),
// //                                 DataColumn(
// //                                   label: Text(
// //                                     'Tên học phần',
// //                                     style:
// //                                         TextStyle(fontWeight: FontWeight.bold),
// //                                   ),
// //                                 ),
// //                                 DataColumn(
// //                                   label: Text(
// //                                     'Số tín chỉ',
// //                                     style:
// //                                         TextStyle(fontWeight: FontWeight.bold),
// //                                   ),
// //                                 ),
// //                                 DataColumn(
// //                                   label: Text(
// //                                     'Tổng kết',
// //                                     style:
// //                                         TextStyle(fontWeight: FontWeight.bold),
// //                                   ),
// //                                 ),
// //                               ],
// //                               rows: state.grades.asMap().entries.map((entry) {
// //                                 final index = entry.key + 1;
// //                                 final course = entry.value;
// //                                 return _buildDataRow(
// //                                   index.toString(),
// //                                   course.courseName,
// //                                   course.credits.toString(),
// //                                   '', // Replace 'N/A' with actual grade if available
// //                                 );
// //                               }).toList(),
// //                             ),
// //                           );
// //                         },
// //                       ),
// //                     ],
// //                   ),
// //                 );
// //               } else if (state is GradeFailed) {
// //                 return const Center(
// //                   child: Text(
// //                     "Lấy thông tin môn học thất bại",
// //                     style: TextStyle(color: AppColors.black),
// //                   ),
// //                 );
// //               } else {
// //                 return const Center(
// //                   child: Text(
// //                     "Lỗi mạng",
// //                     style: TextStyle(color: AppColors.black),
// //                   ),
// //                 );
// //               }
// //             },
// //           ),
// //         ));
// //   }
// //
// //   DataRow _buildDataRow(
// //       String stt, String courseName, String credits, String grade) {
// //     return DataRow(
// //       cells: [
// //         DataCell(Text(stt)),
// //         DataCell(Text(courseName)),
// //         DataCell(Text(credits)),
// //         DataCell(Text(grade)),
// //       ],
// //     );
// //   }
// // }

// import 'package:fit_dnu/core/config/theme/app_colors.dart';
// import 'package:fit_dnu/feature/score/presentation/blocs/grade_cubit/grade_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';


// // Màn hình hiển thị danh sách các môn học
// class ScoreScreen extends StatelessWidget {
//   final List<Map<String, String>> courses = [
//     {'name': 'An toàn hệ điều hành', 'code': 'INT1484'},
//     {'name': 'Cơ sở an toàn thông tin', 'code': 'INT1472'},
//     {'name': 'Hệ điều hành Windows và Linux/Unix', 'code': 'INT1487'},
//     {'name': 'Nhập môn công nghệ phần mềm', 'code': 'INT1340'},
//     {'name': 'Mật mã học cơ sở', 'code': 'INT1344'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// <<<<<<< HEAD
//       backgroundColor: AppColors.bgWhite,
//       body: BlocProvider(
//         create: (context) => GradeCubit()..getGrade(),
//         child: BlocBuilder<GradeCubit, GradeState>(
//           builder: (context, state) {
//             if (state is GradeLoading) {
//               return const Center(
//                 child: CircularProgressIndicator(
//                   color: AppColors.bgRed,
//                 ),
//               );
//             } else if (state is GradeSuccess) {
//               return SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Container(
//                         padding: const EdgeInsets.all(10.0),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(8.0),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.3),
//                               spreadRadius: 2,
//                               blurRadius: 5,
//                             ),
//                           ],
//                         ),
//                         child: const Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Kỳ học: Học kỳ 2 - Năm 2020',
//                               style: TextStyle(
//                                   fontSize: 16, fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text('Số TC: 17',
//                                     style: TextStyle(color: Colors.red)),
//                                 Text('Điểm tổng kết: 0',
//                                     style: TextStyle(color: Colors.red)),
//                                 Text('Điểm GPA: Trống',
//                                     style: TextStyle(color: Colors.red)),
//                               ],
//                             ),
//                             SizedBox(height: 4),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text('Số TC hoàn thành: 17',
//                                     style: TextStyle(color: Colors.red)),
//                                 Text('TC chưa đạt: 0',
//                                     style: TextStyle(color: Colors.red)),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     // Data Table Section
//                     LayoutBuilder(
//                       builder:
//                           (BuildContext context, BoxConstraints constraints) {
//                         return SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           // Allow horizontal scrolling
//                           child: DataTable(
//                             columnSpacing: constraints.maxWidth * 0.03,
//                             headingRowColor: MaterialStateProperty.all<Color>(
//                                 AppColors.bgRed),
//                             headingTextStyle: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                             columns: const [
//                               DataColumn(
//                                 label: Text(
//                                   'STT',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                               DataColumn(
//                                 label: Text(
//                                   'Tên học phần',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                               DataColumn(
//                                 label: Text(
//                                   'Điểm loại',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                               DataColumn(
//                                 label: Text(
//                                   'Điểm',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ],
//                             rows: state.grades.asMap().entries.map((entry) {
//                               final index = entry.key + 1;
//                               final course = entry.value;
//                               return _buildDataRow(
//                                 index.toString(),
//                                 course.courseName,
//                                 course.gradeTypeName,
//                                 course.gradeValue.toString(),
//                               );
//                             }).toList(),
//                           ),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               );
//             } else if (state is GradeFailed) {
//               return const Center(
//                 child: Text(
//                   "Lấy thông tin môn học thất bại",
//                   style: TextStyle(color: AppColors.black),
//                 ),
//               );
//             } else {
//               return const Center(
//                 child: Text(
//                   "Lỗi mạng",
//                   style: TextStyle(color: AppColors.black),
//                 ),
//               );
//             }
//           },
// =======
//       appBar: AppBar(
//         title: Text('Danh sách môn học'),
//       ),
//       body: ListView.builder(
//         itemCount: courses.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: CircleAvatar(child: Text('${index + 1}')),
//             title: Text(courses[index]['name']!),
//             subtitle: Text('Mã môn học: ${courses[index]['code']}'),
//             trailing: Text('Đã có điểm', style: TextStyle(color: Colors.green)),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => CourseScoreScreen(courseName: courses[index]['name']!),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// // Màn hình hiển thị chi tiết điểm của môn học
// class CourseScoreScreen extends StatelessWidget {
//   final String courseName;

//   CourseScoreScreen({required this.courseName});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(courseName),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Ngày công bố điểm thi: 10/08/2021\nNgày kết thúc tiếp nhận phúc khảo: 17/08/2021',
//               style: TextStyle(color: Colors.grey[600]),
//             ),
//             SizedBox(height: 20),
//             DetailedPointsRow(title: 'Chuyên cần (10%)', score: '3.5'),
//             DetailedPointsRow(title: 'Kiểm tra thường xuyên (10%)', score: '6.5'),
//             DetailedPointsRow(title: 'Điểm bài tập (20%)', score: '5.5'),
//             DetailedPointsRow(title: 'Điểm thi lần 1 (60%)', score: '0'),
//             DetailedPointsRow(title: 'Điểm thi lần 2 (60%)', score: '6.5'),
//             Divider(color: Colors.grey),
//             TotalScoreRow(title: 'Tổng kết số:', score: '6'),
//             TotalScoreRow(title: 'Tổng kết chữ:', score: 'C'),
//             SizedBox(height: 10),
//             Text(
//               '* Bạn có 1 tuần từ ngày công bố để thực hiện phúc khảo tại Trung tâm Khảo thí và đảm bảo chất lượng Giáo dục, sau thời gian trên, điểm sẽ chính thức được ghi nhận vào hệ thống',
//               style: TextStyle(color: Colors.red, fontSize: 12),
//             ),
//             SizedBox(height: 10),
//             Text(
//               '* Sinh viên có thắc mắc về điểm số có thể gửi câu hỏi tới Trung tâm khảo thí và nhận câu trả lời tại đây',
//               style: TextStyle(color: Colors.red, fontSize: 12),
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
//                 ),
//                 child: Text('Hỗ trợ kỹ thuật'),
//               ),
//             ),
//           ],
// >>>>>>> 8f8dcda258e7c716051174f648bbe309862a5dcd
//         ),
//       ),
//     );
//   }
// <<<<<<< HEAD

//   DataRow _buildDataRow(
//       String stt, String courseName, String gradeType, String grade) {
//     return DataRow(
//       cells: [
//         DataCell(Text(stt)),
//         DataCell(Text(courseName)),
//         DataCell(Text(gradeType)),
//         DataCell(Text(grade)),
//       ],
// =======
// }

// class DetailedPointsRow extends StatelessWidget {
//   final String title;
//   final String score;

//   DetailedPointsRow({required this.title, required this.score});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(title),
//           Text(
//             score,
//             style: TextStyle(color: Colors.red),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TotalScoreRow extends StatelessWidget {
//   final String title;
//   final String score;

//   TotalScoreRow({required this.title, required this.score});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//           ),
//           Text(
//             score,
//             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//           ),
//         ],
//       ),
//     );
//   }
// }
