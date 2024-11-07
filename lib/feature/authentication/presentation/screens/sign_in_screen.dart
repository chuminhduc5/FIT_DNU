// import 'package:flutter/material.dart';
//
// class SignInScreen extends StatefulWidget {
//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }
//
// class _SignInScreenState extends State<SignInScreen> {
//   String dropdownValue = 'Sinh Viên';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 32.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Logo Section
//               Image.asset(
//               "assets/images/dainam.jpg",
//                 height: 100,
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Đăng nhập tài khoản',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 32),
//
//               // Dropdown for User Type
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: DropdownButtonHideUnderline(
//                   child: DropdownButton<String>(
//                     value: dropdownValue,
//                     icon: Icon(Icons.arrow_drop_down),
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         dropdownValue = newValue!;
//                       });
//                     },
//                     items: <String>['Sinh Viên', 'Giáo Viên', 'Quản Trị']
//                         .map<DropdownMenuItem<String>>((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Row(
//                           children: [
//                             Icon(Icons.person),
//                             SizedBox(width: 8),
//                             Text(value),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//
//               // Username Field
//               TextField(
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.account_circle),
//                   labelText: 'Tài khoản',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//
//               // Password Field
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.lock),
//                   suffixIcon: Icon(Icons.visibility),
//                   labelText: 'Mật khẩu',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 8),
//
//               // Forgot Password Link
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: TextButton(
//                   onPressed: () {
//                     // Add forgot password logic here
//                   },
//                   child: Text(
//                     'Quên mật khẩu sinh viên',
//                     style: TextStyle(color: Colors.blue),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//
//               // Login and Home Buttons
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add login logic here
//                     },
//                     child: Text('Đăng nhập'),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add navigation to home screen logic here
//                     },
//                     child: Text('Trang chủ'),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.red,
//                       padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:fit_dnu/app_view.dart';
import 'package:fit_dnu/core/common/helper/navigation/app_navigation.dart';
import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:fit_dnu/feature/authentication/presentation/widgets/button_auth_widget.dart';
import 'package:fit_dnu/feature/authentication/presentation/widgets/text_field_auth_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with WidgetsBindingObserver {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obscurePassword = true;
  IconData iconPassword = CupertinoIcons.eye_slash;
  bool isCheckAccountPassword = false;

  void _onSignInSuccess() async {
    // if (socketService.socket == null || !socketService.socket!.connected) {
    //   socketService.connectToSocket(username, employeeId);
    // }
    final username = _usernameController.text;
    final password = _passwordController.text;
    if (_formKey.currentState!.validate()) {}
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final maxScreenHeight = MediaQuery.of(context).size.height;
    final maxScreenWidth = MediaQuery.of(context).size.width;
    final isLandscape = maxScreenWidth > maxScreenHeight;

    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          child: isLandscape
              ? Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: maxScreenHeight * 0.1),
                        child: Image.asset(
                          "assets/images/dainam.jpg",
                          width: 400,
                          height: 400,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: buildForm(),
                      ),
                    ),
                  ],
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/dainam.jpg",
                          width: 300,
                          height: 300,
                        ),
                      ),
                      buildForm(),
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  Widget buildForm() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(
          maxWidth: 600,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Chào mừng bạn đến với Đại học Đại Nam',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                child: Text(
                  'Vui lòng nhập tài khoản của bạn để đăng nhập',
                  textAlign: TextAlign.center,
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: TextFieldAuthWidget(
                        controller: _usernameController,
                        hinText: 'Tài khoản',
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: const Icon(CupertinoIcons.person),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Vui lòng nhập tài khoản";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: TextFieldAuthWidget(
                        controller: _passwordController,
                        hinText: 'Mật khẩu',
                        obscureText: obscurePassword,
                        keyboardType: TextInputType.visiblePassword,
                        prefixIcon: const Icon(CupertinoIcons.lock),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Vui lòng nhập mật khẩu';
                          }
                          return null;
                        },
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                              iconPassword = obscurePassword
                                  ? CupertinoIcons.eye_slash
                                  : CupertinoIcons.eye;
                            });
                          },
                          icon: Icon(iconPassword),
                        ),
                      ),
                    ),
                    if (isCheckAccountPassword) ...[
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Tài khoản hoặc mật khẩu của bạn chưa chính xác!',
                        style: TextStyle(color: AppColors.textRed),
                      ),
                    ],
                    const SizedBox(height: 25),
                    _signInButton(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton(BuildContext context) {
    return ButtonAuthWidget(
        textButton: 'Đăng nhập',
        onPressed: () {
          AppNavigator.pushAndRemove(context, const AppView());
        });
  }
}
