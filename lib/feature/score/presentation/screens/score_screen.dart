import 'package:fit_dnu/core/common/helper/navigation/app_navigation.dart';
import 'package:fit_dnu/feature/score/presentation/screens/score_detail_screen.dart';
import 'package:fit_dnu/feature/score/presentation/widgets/select_semester_and_school_year_widget.dart';
import 'package:fit_dnu/feature/score/presentation/widgets/subject_card_widget.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  List<Map<String, String>> subjects = [
    {
      'subject': 'An toàn, bảo mật thông tin',
      'subjectId': 'Mã môn học: ATTT',
      'isEvaluate': 'Đã đánh giá GVHD'
    },
    {
      'subject': 'Chuyển đổi số',
      'subjectId': 'Mã môn học: CDS',
      'isEvaluate': 'Đã đánh giá GVHD'
    },
    {
      'subject': 'Công nghệ dữ liệu',
      'subjectId': 'Mã môn học: CNDL',
      'isEvaluate': 'Đã đánh giá GVHD'
    },
    {
      'subject': 'Kiểm thử phần mềm',
      'subjectId': 'Mã môn học: KTPM',
      'isEvaluate': 'Đã đánh giá GVHD'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            const SelectSemesterAndSchoolYearWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  final subject = subjects[index];
                  return SubjectCardWidget(
                    index: index,
                    subject: subject['subject']!,
                    subjectId: subject['subjectId']!,
                    evaluate: subject['isEvaluate']!,
                    onPressed: () {
                      print('Đã bấm nút');
                      AppNavigator.push(
                          context,
                          ScoreDetailScreen(
                            subject: subject,
                          ));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
