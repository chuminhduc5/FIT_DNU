import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      appBar: AppBar(
        title: const Text(
          'Thời khóa biểu',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.textWhite),
        ),
        backgroundColor: AppColors.bgOrange,
        iconTheme: const IconThemeData(color: AppColors.bgWhite),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CalendarWidget(selectedDate: selectedDate),
            FilterAndCreateButton(),
            EventList(),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[200],
          ),
          child: DropdownButton<String>(
            value: value,
            isExpanded: true,
            underline: const SizedBox(),
            icon: const Icon(Icons.arrow_drop_down),
            items: [DropdownMenuItem(value: value, child: Text(value))],
            onChanged: (newValue) {},
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildScheduleDataTable() {
    return ListView(children: [
      DataTable(
        columns: [
          DataColumn(
              label:
                  Text('Buổi', style: TextStyle(fontWeight: FontWeight.bold))),
          DataColumn(
              label:
                  Text('Thứ 2', style: TextStyle(fontWeight: FontWeight.bold))),
          DataColumn(
              label:
                  Text('Thứ 3', style: TextStyle(fontWeight: FontWeight.bold))),
          DataColumn(
              label:
                  Text('Thứ 4', style: TextStyle(fontWeight: FontWeight.bold))),
          DataColumn(
              label:
                  Text('Thứ 5', style: TextStyle(fontWeight: FontWeight.bold))),
          DataColumn(
              label:
                  Text('Thứ 6', style: TextStyle(fontWeight: FontWeight.bold))),
          DataColumn(
              label:
                  Text('Thứ 7', style: TextStyle(fontWeight: FontWeight.bold))),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('SÁNG (4 Tiết)')),
            DataCell(Text(
                'Kiểm thử phần mềm\nP210-GD1\nTiết: 1 - 4\n(23/09/2024)\nGV: Trần Thị Huệ')),
            DataCell(Text(
                'Công nghệ dữ liệu\nP310-GD2\nTiết: 1 - 4\n(23/09/2024)\nGV: Trần Bảo Minh')),
            DataCell(Text(
                'An toàn, bảo mật thông tin\nP202-GD1\nTiết: 1 - 4\n(23/09/2024)\nGV: Trần Đăng Công')),
            DataCell(Text('')),
            DataCell(Text('')),
            DataCell(Text(
                'Chuyển đổi số\nP610-GD1\nTiết: 1 - 4\n(23/09/2024)\nGV: Lê Trung Hiếu')),
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
    ]);
  }
}

class TabBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Lịch theo tháng',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Lịch theo tuần'),
        ),
      ],
    );
  }
}

class CalendarWidget extends StatelessWidget {
  final DateTime selectedDate;

  CalendarWidget({required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    // Placeholder for calendar (implement with a package like table_calendar or another custom approach)
    return Container(
      height: 250,
      color: Colors.grey[200],
      child: Center(child: Text("Calendar goes here")),
    );
  }
}

class FilterAndCreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DropdownButton<String>(
            value: "Tất cả",
            items: <String>['Tất cả', 'Sự kiện', 'Học tập']
                .map((String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ))
                .toList(),
            onChanged: (value) {
              // Handle filter change
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Handle create event action
            },
            child: Text("Tạo sự kiện"),
          ),
        ],
      ),
    );
  }
}

class EventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Specify a fixed height
      child: ListView(
        children: [
          EventCard(
            title: "Tiết: 1 - 2: Lập trình mạng",
            time: "07:30 - 09:20",
            room: "70169",
          ),
          EventCard(
            title: "Tiết: 3 - 4: An toàn mạng",
            time: "09:30 - 11:20",
            room: "70168",
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String time;
  final String room;

  EventCard({required this.title, required this.time, required this.room});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Thời gian: $time"),
            Text("Phòng: $room"),
          ],
        ),
      ),
    );
  }
}
