// import 'package:fit_dnu/core/config/theme/app_colors.dart';
// import 'package:fit_dnu/feature/score/presentation/blocs/course_cubit/course_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class LearningResultScreen extends StatelessWidget {
//   const LearningResultScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColors.bgWhite,
//         body: BlocProvider(
//           create: (context) => CourseCubit()..getCourse(),
//           child: BlocBuilder(builder: (context, state) {
//             if (state is CourseLoading) {
//               return const Center(
//                 child: CircularProgressIndicator(
//                   color: AppColors.bgRed,
//                 ),
//               );
//             } else if (state is CourseSuccess) {
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
//                             headingRowColor:
//                                 WidgetStateProperty.all<Color>(AppColors.bgRed),
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
//                                   'Số tín chỉ',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                               DataColumn(
//                                 label: Text(
//                                   'Tổng kết',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ],
//                             rows: [
//                               _buildDataRow(
//                                   '1', 'An toàn hệ điều hành', '02', '6'),
//                               _buildDataRow(
//                                   '2', 'Cơ sở an toàn thông tin', '03', '8.2'),
//                               _buildDataRow(
//                                   '3',
//                                   'Hệ điều hành Windows và Linux/Unix',
//                                   '03',
//                                   '7.3'),
//                               _buildDataRow('4', 'Nhập môn công nghệ phần mềm',
//                                   '03', '6.2'),
//                               _buildDataRow(
//                                   '5', 'Mật mã học cơ sở', '03', '7.6'),
//                               _buildDataRow('6', 'Lập trình Web', '03', '6.8'),
//                               _buildDataRow(
//                                   '7',
//                                   'Phân tích và thiết kế hệ thống',
//                                   '03',
//                                   '7.1'),
//                               _buildDataRow('8', 'Cơ sở dữ liệu', '04', '8.0'),
//                               _buildDataRow(
//                                   '9',
//                                   'Cấu trúc dữ liệu và giải thuật',
//                                   '03',
//                                   '7.5'),
//                               _buildDataRow(
//                                   '10', 'Lập trình Java', '03', '6.9'),
//                               _buildDataRow(
//                                   '11', 'Lập trình di động', '03', '7.4'),
//                               _buildDataRow('12', 'Lập trình hướng đối tượng',
//                                   '03', '8.3'),
//                               _buildDataRow(
//                                   '13', 'Thương mại điện tử', '02', '7.2'),
//                               _buildDataRow(
//                                   '14', 'Kỹ thuật lập trình', '03', '6.7'),
//                               _buildDataRow(
//                                   '15', 'Trí tuệ nhân tạo', '03', '7.8'),
//                               _buildDataRow('16', 'An toàn mạng', '03', '8.1'),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               );
//             } else if (state is CourseFailed) {
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
//           }),
//         ));
//   }
//
//   DataRow _buildDataRow(
//       String stt, String courseName, String credits, String grade) {
//     return DataRow(
//       cells: [
//         DataCell(Text(stt)),
//         DataCell(Text(courseName)),
//         DataCell(Text(credits)),
//         DataCell(Text(grade)),
//       ],
//     );
//   }
// }

import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:fit_dnu/feature/score/presentation/blocs/course_cubit/course_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LearningResultScreen extends StatelessWidget {
  const LearningResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgWhite,
        body: BlocProvider(
          create: (context) => CourseCubit()..getCourse(),
          child: BlocBuilder<CourseCubit, CourseState>(
            builder: (context, state) {
              if (state is CourseLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.bgRed,
                  ),
                );
              } else if (state is CourseSuccess) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kỳ học: Học kỳ 2 - Năm 2020',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Số TC: 17',
                                      style: TextStyle(color: Colors.red)),
                                  Text('Điểm tổng kết: 0',
                                      style: TextStyle(color: Colors.red)),
                                  Text('Điểm GPA: Trống',
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Số TC hoàn thành: 17',
                                      style: TextStyle(color: Colors.red)),
                                  Text('TC chưa đạt: 0',
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Data Table Section
                      LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            // Allow horizontal scrolling
                            child: DataTable(
                              columnSpacing: constraints.maxWidth * 0.03,
                              headingRowColor: WidgetStateProperty.all<Color>(
                                  AppColors.bgRed),
                              headingTextStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              columns: const [
                                DataColumn(
                                  label: Text(
                                    'STT',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Tên học phần',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Số tín chỉ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Tổng kết',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                              rows: state.courses.asMap().entries.map((entry) {
                                final index = entry.key + 1;
                                final course = entry.value;
                                return _buildDataRow(
                                  index.toString(),
                                  course.courseName,
                                  course.credits.toString(),
                                  '', // Replace 'N/A' with actual grade if available
                                );
                              }).toList(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              } else if (state is CourseFailed) {
                return const Center(
                  child: Text(
                    "Lấy thông tin môn học thất bại",
                    style: TextStyle(color: AppColors.black),
                  ),
                );
              } else {
                return const Center(
                  child: Text(
                    "Lỗi mạng",
                    style: TextStyle(color: AppColors.black),
                  ),
                );
              }
            },
          ),
        ));
  }

  DataRow _buildDataRow(
      String stt, String courseName, String credits, String grade) {
    return DataRow(
      cells: [
        DataCell(Text(stt)),
        DataCell(Text(courseName)),
        DataCell(Text(credits)),
        DataCell(Text(grade)),
      ],
    );
  }
}
