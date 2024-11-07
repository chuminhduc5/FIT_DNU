import 'package:animations/animations.dart';
import 'package:fit_dnu/feature/home/presentation/screens/home_screen.dart';
import 'package:fit_dnu/feature/home/presentation/screens/util_screen.dart';
import 'package:fit_dnu/feature/notification/presentation/screens/notification_screen.dart';
import 'package:fit_dnu/feature/profile/presentation/screens/profile_screen.dart';
import 'package:fit_dnu/feature/score/presentation/screens/score_screen.dart';
import 'package:flutter/material.dart';
import 'core/config/theme/app_colors.dart';

// class AppView extends StatefulWidget {
//   const AppView({super.key});
//
//   @override
//   State<AppView> createState() => _AppViewState();
// }
//
// class _AppViewState extends State<AppView> {
//   int _currentIndex = 0;
//   final List<Widget> _screens = [
//     HomeScreen(
//       onTap: () {
//         setState(() {
//           _currentIndex = 4;
//         });
//       },
//     ),
//     const NotificationScreen(),
//     const ScoreScreen(),
//     const UtilScreen(),
//     const ProfileScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.grey[100],
//         body: PageTransitionSwitcher(
//           duration: const Duration(milliseconds: 300),
//           transitionBuilder: (child, animation, secondAnimation) {
//             return FadeThroughTransition(
//               animation: animation,
//               secondaryAnimation: secondAnimation,
//               child: child,
//             );
//           },
//           child: _screens[_currentIndex],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           onTap: (index) {
//             if (index != _currentIndex) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             }
//           },
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: AppColors.bgAppbar,
//           backgroundColor: Colors.white,
//           selectedFontSize: 12,
//           unselectedFontSize: 10,
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Trang chủ',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.notifications),
//               label: 'Thông báo',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.layers),
//               label: 'Góc học tập',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.archive),
//               label: 'Tiện ích',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle),
//               label: 'Cá nhân',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  int _currentIndex = 0;

  // Tạo danh sách màn hình với HomeScreen nhận callback onTap
  // List<Widget> _screens = [
  //   HomeScreen(
  //     onTap: () {
  //       // Khi nhấn vào HomeScreen, cập nhật _currentIndex
  //       setState(() {
  //         _currentIndex = 4; // Chuyển tới màn hình Profile
  //       });
  //     },
  //   ),
  //   const NotificationScreen(),
  //   const ScoreScreen(),
  //   const UtilScreen(),
  //   const ProfileScreen(),
  // ];

  List<Widget> _getScreens() {
    return [
      HomeScreen(
        onTap: () {
          // This is safe now because it's inside the build method where setState can be accessed
          setState(() {
            _currentIndex = 4; // Navigate to Profile screen
          });
        },
      ),
      const NotificationScreen(),
      const ScoreScreen(),
      const UtilScreen(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation, secondAnimation) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondAnimation,
              child: child,
            );
          },
          child: _getScreens()[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            if (index != _currentIndex) {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.bgOrange,
          backgroundColor: Colors.white,
          selectedFontSize: 12,
          unselectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Trang chủ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Thông báo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.layers),
              label: 'Góc học tập',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.archive),
              label: 'Tiện ích',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Cá nhân',
            ),
          ],
        ),
      ),
    );
  }
}
