import 'package:flutter/material.dart';


// Màn hình hiển thị danh sách các môn học
class ScoreScreen extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {'name': 'An toàn hệ điều hành', 'code': 'INT1484'},
    {'name': 'Cơ sở an toàn thông tin', 'code': 'INT1472'},
    {'name': 'Hệ điều hành Windows và Linux/Unix', 'code': 'INT1487'},
    {'name': 'Nhập môn công nghệ phần mềm', 'code': 'INT1340'},
    {'name': 'Mật mã học cơ sở', 'code': 'INT1344'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách môn học'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(courses[index]['name']!),
            subtitle: Text('Mã môn học: ${courses[index]['code']}'),
            trailing: Text('Đã có điểm', style: TextStyle(color: Colors.green)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseScoreScreen(courseName: courses[index]['name']!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Màn hình hiển thị chi tiết điểm của môn học
class CourseScoreScreen extends StatelessWidget {
  final String courseName;

  CourseScoreScreen({required this.courseName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courseName),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ngày công bố điểm thi: 10/08/2021\nNgày kết thúc tiếp nhận phúc khảo: 17/08/2021',
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 20),
            DetailedPointsRow(title: 'Chuyên cần (10%)', score: '3.5'),
            DetailedPointsRow(title: 'Kiểm tra thường xuyên (10%)', score: '6.5'),
            DetailedPointsRow(title: 'Điểm bài tập (20%)', score: '5.5'),
            DetailedPointsRow(title: 'Điểm thi lần 1 (60%)', score: '0'),
            DetailedPointsRow(title: 'Điểm thi lần 2 (60%)', score: '6.5'),
            Divider(color: Colors.grey),
            TotalScoreRow(title: 'Tổng kết số:', score: '6'),
            TotalScoreRow(title: 'Tổng kết chữ:', score: 'C'),
            SizedBox(height: 10),
            Text(
              '* Bạn có 1 tuần từ ngày công bố để thực hiện phúc khảo tại Trung tâm Khảo thí và đảm bảo chất lượng Giáo dục, sau thời gian trên, điểm sẽ chính thức được ghi nhận vào hệ thống',
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
            SizedBox(height: 10),
            Text(
              '* Sinh viên có thắc mắc về điểm số có thể gửi câu hỏi tới Trung tâm khảo thí và nhận câu trả lời tại đây',
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                child: Text('Hỗ trợ kỹ thuật'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailedPointsRow extends StatelessWidget {
  final String title;
  final String score;

  DetailedPointsRow({required this.title, required this.score});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(
            score,
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}

class TotalScoreRow extends StatelessWidget {
  final String title;
  final String score;

  TotalScoreRow({required this.title, required this.score});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Text(
            score,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
