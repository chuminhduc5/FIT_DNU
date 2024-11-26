import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ScoreDetailScreen extends StatelessWidget {
  final Map<String, String> subject;

  const ScoreDetailScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgOrange,
        title: const Text(
          'Góc học tập',
          style: TextStyle(
            fontSize: 20,
            color: AppColors.textWhite,
          ),
        ),
        iconTheme: const IconThemeData(color: AppColors.textWhite),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subject['subject']!,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Ngày công bố điểm thi: '),
            const Text('Ngày kết thúc tiếp nhận phúc khảo: '),
            const Divider(),
            // Scores
            buildScoreRow('Chuyên cần (10%)', '3.5'),
            buildScoreRow('Kiểm tra thường xuyên (10%)', '6.5'),
            buildScoreRow('Điểm bài tập (20%)', '5.5'),
            buildScoreRow('Điểm thi lần 1 (60%)', '6.5'),
            buildScoreRow('Điểm thi lần 2 (60%)', '0'),
            const Divider(),
            // Total score
            const Text(
              'Tổng kết số: 6',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Tổng kết chữ: C',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Notes
            const Text(
              '* Bạn có 1 tuần kể từ ngày công bố để thực hiện phúc khảo tại Trung tâm Khảo thí...',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildScoreRow(String label, String score) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(score, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
