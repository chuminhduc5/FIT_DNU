import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String dropdownValue = 'Thông Tin Sinh Viên';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: Icon(Icons.arrow_back),
        title: Text('Thông tin sinh viên'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // University Logo
            Image.asset(
              "assets/images/dainam.jpg",
              height: 100,
            ),
            SizedBox(height: 16),
            // Form Fields
            buildTextField('Mã sinh viên'),
            buildTextField('Họ và tên'),
            buildTextField('Ngày sinh'),
            buildTextField('Giới tính'),
            buildTextField('Quê quán'),
          ],
        ),
      ),
    );
  }

  // Reusable text field widget
  Widget buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
