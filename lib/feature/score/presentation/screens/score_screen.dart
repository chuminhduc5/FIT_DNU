// import 'package:fit_dnu/core/config/theme/app_colors.dart';
// import 'package:fit_dnu/feature/score/presentation/blocs/grade_cubit/grade_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class ScoreScreen extends StatefulWidget {
//   const ScoreScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ScoreScreen> createState() => _ScoreScreenState();
// }
//
// class _ScoreScreenState extends State<ScoreScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColors.bgWhite,
//         body: BlocProvider(
//           create: (context) => GradeCubit()..getGrade(),
//           child: BlocBuilder<GradeCubit, GradeState>(
//             builder: (context, state) {
//               if (state is GradeLoading) {
//                 return const Center(
//                   child: CircularProgressIndicator(
//                     color: AppColors.bgRed,
//                   ),
//                 );
//               } else if (state is GradeSuccess) {
//                 return SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Container(
//                           padding: const EdgeInsets.all(10.0),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(8.0),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.3),
//                                 spreadRadius: 2,
//                                 blurRadius: 5,
//                               ),
//                             ],
//                           ),
//                           child: const Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Kỳ học: Học kỳ 2 - Năm 2020',
//                                 style: TextStyle(
//                                     fontSize: 16, fontWeight: FontWeight.bold),
//                               ),
//                               SizedBox(height: 8),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text('Số TC: 17',
//                                       style: TextStyle(color: Colors.red)),
//                                   Text('Điểm tổng kết: 0',
//                                       style: TextStyle(color: Colors.red)),
//                                   Text('Điểm GPA: Trống',
//                                       style: TextStyle(color: Colors.red)),
//                                 ],
//                               ),
//                               SizedBox(height: 4),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text('Số TC hoàn thành: 17',
//                                       style: TextStyle(color: Colors.red)),
//                                   Text('TC chưa đạt: 0',
//                                       style: TextStyle(color: Colors.red)),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       // Data Table Section
//                       LayoutBuilder(
//                         builder:
//                             (BuildContext context, BoxConstraints constraints) {
//                           return SingleChildScrollView(
//                             scrollDirection: Axis.horizontal,
//                             // Allow horizontal scrolling
//                             child: DataTable(
//                               columnSpacing: constraints.maxWidth * 0.03,
//                               headingRowColor: WidgetStateProperty.all<Color>(
//                                   AppColors.bgRed),
//                               headingTextStyle: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                               columns: const [
//                                 DataColumn(
//                                   label: Text(
//                                     'STT',
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                                 DataColumn(
//                                   label: Text(
//                                     'Tên học phần',
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                                 DataColumn(
//                                   label: Text(
//                                     'Số tín chỉ',
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                                 DataColumn(
//                                   label: Text(
//                                     'Tổng kết',
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                               ],
//                               rows: state.grades.asMap().entries.map((entry) {
//                                 final index = entry.key + 1;
//                                 final course = entry.value;
//                                 return _buildDataRow(
//                                   index.toString(),
//                                   course.courseName,
//                                   course.credits.toString(),
//                                   '', // Replace 'N/A' with actual grade if available
//                                 );
//                               }).toList(),
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 );
//               } else if (state is GradeFailed) {
//                 return const Center(
//                   child: Text(
//                     "Lấy thông tin môn học thất bại",
//                     style: TextStyle(color: AppColors.black),
//                   ),
//                 );
//               } else {
//                 return const Center(
//                   child: Text(
//                     "Lỗi mạng",
//                     style: TextStyle(color: AppColors.black),
//                   ),
//                 );
//               }
//             },
//           ),
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
import 'package:fit_dnu/feature/score/presentation/blocs/grade_cubit/grade_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgWhite,
      body: BlocProvider(
        create: (context) => GradeCubit()..getGrade(),
        child: BlocBuilder<GradeCubit, GradeState>(
          builder: (context, state) {
            if (state is GradeLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.bgRed,
                ),
              );
            } else if (state is GradeSuccess) {
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            headingRowColor: MaterialStateProperty.all<Color>(
                                AppColors.bgRed),
                            headingTextStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            columns: const [
                              DataColumn(
                                label: Text(
                                  'STT',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Tên học phần',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Điểm loại',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Điểm',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                            rows: state.grades.asMap().entries.map((entry) {
                              final index = entry.key + 1;
                              final course = entry.value;
                              return _buildDataRow(
                                index.toString(),
                                course.courseName,
                                course.gradeTypeName,
                                course.gradeValue.toString(),
                              );
                            }).toList(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            } else if (state is GradeFailed) {
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
      ),
    );
  }

  DataRow _buildDataRow(
      String stt, String courseName, String gradeType, String grade) {
    return DataRow(
      cells: [
        DataCell(Text(stt)),
        DataCell(Text(courseName)),
        DataCell(Text(gradeType)),
        DataCell(Text(grade)),
      ],
    );
  }
}
