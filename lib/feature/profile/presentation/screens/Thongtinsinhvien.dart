import 'package:flutter/material.dart';

class StudentInformationWidget extends StatefulWidget {
  const StudentInformationWidget({super.key});

  @override
  State<StudentInformationWidget> createState() => _StudentInformationWidgetState();
}

class _StudentInformationWidgetState extends State<StudentInformationWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Student Information'),
          backgroundColor: Color(0xFFEF7E39),
          elevation: 2,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildProfileCard(),
                  SizedBox(height: 24),
                  _buildPersonalInformationCard(),
                  SizedBox(height: 24),
                  _buildAcademicInformationCard(),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      print('Update Information');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEF7E39),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      textStyle: TextStyle(fontSize: 16),
                    ),
                    child: Text('Update Information'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?w=500&h=500'),
            ),
            SizedBox(height: 16),
            Text(
              'Nguyen Van A',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Student ID: SV001',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPersonalInformationCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildInformationRow('Date of Birth:', '01/01/2003'),
            _buildInformationRow('Gender:', 'Male'),
            _buildInformationRow('Phone:', '0123456789'),
            _buildInformationRow('Email:', 'nguyenvana@email.com'),
          ],
        ),
      ),
    );
  }

  Widget _buildAcademicInformationCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Academic Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildInformationRow('Faculty:', 'Information Technology'),
            _buildInformationRow('Class:', 'CNTT1505'),
            _buildInformationRow('Academic Year:', '2021-2025'),
            _buildInformationRow('GPA:', '3.75'),
          ],
        ),
      ),
    );
  }

  Widget _buildInformationRow(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            value,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}