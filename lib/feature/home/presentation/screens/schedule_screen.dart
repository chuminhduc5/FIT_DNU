import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Thời khóa biểu', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDropdown('Học kỳ:', 'Kỳ 1'),
            _buildDropdown('Năm học:', '2024 - 2025'),
            _buildDropdown('Ngành học:', 'Chuyên ngành chính'),
            _buildDropdown('Tuần:', 'Tuần 13 [Từ 04/11 - 10/11/2024]'),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _buildScheduleDataTable(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[200],
          ),
          child: DropdownButton<String>(
            value: value,
            isExpanded: true,
            underline: SizedBox(),
            icon: Icon(Icons.arrow_drop_down),
            items: [DropdownMenuItem(value: value, child: Text(value))],
            onChanged: (newValue) {},
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }

  Widget _buildScheduleDataTable() {
    return ListView(
      children: [
        DataTable(
          columns: [
            DataColumn(label: Text('Buổi', style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('Thứ 2', style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('Thứ 3', style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('Thứ 4', style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('Thứ 5', style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('Thứ 6', style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('Thứ 7', style: TextStyle(fontWeight: FontWeight.bold))),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('SÁNG (4 Tiết)')),
              DataCell(Text('Kiểm thử phần mềm\nP210-GD1\nTiết: 1 - 4\n(23/09/2024)\nGV: Trần Thị Huệ')),
              DataCell(Text('Công nghệ dữ liệu\nP310-GD2\nTiết: 1 - 4\n(23/09/2024)\nGV: Trần Bảo Minh')),
              DataCell(Text('An toàn, bảo mật thông tin\nP202-GD1\nTiết: 1 - 4\n(23/09/2024)\nGV: Trần Đăng Công')),
              DataCell(Text('')),
              DataCell(Text('')),
              DataCell(Text('Chuyển đổi số\nP610-GD1\nTiết: 1 - 4\n(23/09/2024)\nGV: Lê Trung Hiếu')),
            ]),
            DataRow(cells: [
              DataCell(Text('CHIỀU (4 Tiết)')),
              DataCell(Text('')),
              DataCell(Text('')),
              DataCell(Text('')),
              DataCell(Text('')),
              DataCell(Text('')),
              DataCell(Text('')),
            ]),
          ],
        ),
      ]
    );
  }
}
