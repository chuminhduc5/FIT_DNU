import 'package:flutter/material.dart';

class IntroDnuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Giới thiệu về DNU',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'GIỚI THIỆU',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Trường Đại học Đại Nam được thành lập tại Hà Nội và hoạt động theo Quy chế trường đại học tư thục theo Quyết định số 1535/QĐ-TTg ngày 14 tháng 11 năm 2007 của Thủ tướng Chính phủ.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Ban đầu trường có 8 khoa đào tạo bao gồm các chuyên ngành như: Tài chính, Ngân hàng, Kế toán, Quản trị kinh doanh, Công nghệ thông tin, Xây dựng, Tiếng Anh, Tiếng Trung, Quan hệ công chúng và truyền thông. Từ năm 2013 đến 2019, trường lần lượt mở thêm các ngành Dược học, Luật kinh tế, Quản trị dịch vụ du lịch và lữ hành, Đông phương học (chuyên ngành Nhật Bản học).',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Ngày 20 tháng 11 năm 2019, trường tổ chức kỷ niệm ngày thành lập trường và nhận chứng nhận Giấy Chứng nhận kiểm định chất lượng cơ sở giáo dục và trở thành trường đại học thứ 8 được công nhận theo bộ tiêu chuẩn đánh giá mới của Bộ Giáo dục và Đào tạo.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '"Trở thành sự lựa chọn hàng đầu của người học". Đại học Đại Nam lấy đào tạo về bảo vệ - chăm sóc sức khỏe, gồm các ngành Y khoa, Dược học, Điều dưỡng là trục đào tạo cốt lõi; chú trọng đầu tư phát triển, quốc tế hóa các ngành đào tạo có nhu cầu xã hội cao, như: Công nghệ thông tin, Khoa học máy tính, Quản trị kinh doanh, Kinh doanh quốc tế, Logistics và quản lý chuỗi cung ứng, Thương mại điện tử, Truyền thông đa phương tiện, Quản trị dịch vụ du lịch và lữ hành,  Ngôn ngữ Anh, Ngôn ngữ Trung Quốc, Ngôn ngữ Hàn Quốc, Ngôn ngữ Nhật Bản…vv…',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
