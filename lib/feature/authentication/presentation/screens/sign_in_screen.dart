import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String dropdownValue = 'Sinh Viên';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Section
              Image.asset(
              "assets/images/dainam.jpg",
                height: 100,
              ),
              SizedBox(height: 16),
              Text(
                'Đăng nhập tài khoản',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32),

              // Dropdown for User Type
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_drop_down),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['Sinh Viên', 'Giáo Viên', 'Quản Trị']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: [
                            Icon(Icons.person),
                            SizedBox(width: 8),
                            Text(value),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Username Field
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'Tài khoản',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  labelText: 'Mật khẩu',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 8),

              // Forgot Password Link
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    // Add forgot password logic here
                  },
                  child: Text(
                    'Quên mật khẩu sinh viên',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Login and Home Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add login logic here
                    },
                    child: Text('Đăng nhập'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add navigation to home screen logic here
                    },
                    child: Text('Trang chủ'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
