import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Kết quả học tập'),
          backgroundColor: Color(0xFFEE7C60),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildOverviewCard(),
                  _buildSemesterResultCard(),
                  _buildSubjectDetailCard(),
                  ElevatedButton(
                    onPressed: () {
                      print('Xem báo cáo chi tiết');
                    },
                    child: Text('Xem báo cáo chi tiết'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEE7C60), // Button color
                      padding: EdgeInsets.symmetric(vertical: 16),
                      textStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOverviewCard() {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tổng quan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildGPAInfo(),
                _buildCreditsInfo(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGPAInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('GPA', style: TextStyle(color: Colors.blue, fontSize: 18)),
        Text('3.75', style: TextStyle(fontSize: 24)),
      ],
    );
  }

  Widget _buildCreditsInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tín chỉ đã hoàn thành',
            style: TextStyle(color: Colors.grey, fontSize: 16)),
        Text('75/150', style: TextStyle(fontSize: 24)),
      ],
    );
  }

  Widget _buildSemesterResultCard() {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kết quả học kỳ gần nhất',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            _buildSemesterRow('Học kỳ:', 'Học kỳ 1, 2023-2024'),
            _buildSemesterRow('GPA học kỳ:', '3.80'),
            _buildSemesterRow('Số tín chỉ đạt:', '18/18'),
          ],
        ),
      ),
    );
  }

  Widget _buildSemesterRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(color: Colors.grey)),
        Text(value),
      ],
    );
  }

  Widget _buildSubjectDetailCard() {
    return Card(
      margin: EdgeInsets.only(bottom: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Chi tiết môn học',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            _buildSubjectRow('Lập trình Web', '3 tín chỉ', 'A'),
            _buildSubjectRow('Cơ sở dữ liệu', '4 tín chỉ', 'A+'),
            _buildSubjectRow('Trí tuệ nhân tạo', '3 tín chỉ', 'B+'),
          ],
        ),
      ),
    );
  }

  Widget _buildSubjectRow(String subject, String credits, String grade) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subject, style: TextStyle(fontSize: 16)),
              Text(credits, style: TextStyle(color: Colors.grey)),
            ],
          ),
          Text(grade, style: TextStyle(color: Colors.blue, fontSize: 18)),
        ],
      ),
    );
  }
}