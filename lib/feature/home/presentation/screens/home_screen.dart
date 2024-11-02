import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'Trang Chủ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: _buildHome(context),
    );
  }
}

  Widget _buildHome(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'ĐẠI HỌC ĐẠI NAM',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Học để thay đổi',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          // Menu Section
          Container(
            color: Colors.orange,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MenuIcon(title: 'TRANG CHỦ', icon: Icons.home),
                MenuIcon(title: 'CHƯƠNG TRÌNH ĐÀO TẠO', icon: Icons.book),
                MenuIcon(title: 'ĐĂNG KÍ', icon: Icons.app_registration),
                MenuIcon(title: 'SINH VIÊN', icon: Icons.person),
                MenuIcon(title: 'ĐÁNH GIÁ', icon: Icons.star),
                MenuIcon(title: 'THÔNG TIN TÀI CHÍNH', icon: Icons.account_balance),
                MenuIcon(title: 'THÔNG TIN', icon: Icons.info),
              ],
            ),
          ),
          // Welcome Text
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Chào mừng quý vị đến với Cổng thông tin của trường',
              style: TextStyle(fontSize: 16),
            ),
          ),
          // News Section
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TIN TỨC MỚI NHẤT',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Xem tất cả',
                    style: TextStyle(color: Colors.blue),
                  ),
                  // Placeholder for News Content
                  Expanded(
                    child: Center(
                      child: Text(
                        'No News Available',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

class MenuIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  const MenuIcon({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
