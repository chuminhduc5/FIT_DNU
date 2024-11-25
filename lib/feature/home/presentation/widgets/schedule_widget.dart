// import 'package:flutter/material.dart';
//
// class ScheduleWidget extends StatefulWidget {
//   @override
//   _ScheduleWidgetState createState() => _ScheduleWidgetState();
// }
//
// class _ScheduleWidgetState extends State<ScheduleWidget> {
//   int selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: const EdgeInsets.all(12),
//           height: 200,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.2),
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: const Offset(0, 3),
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               // Toggle buttons
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   _buildDateButton("Hôm nay", 0),
//                   _buildDateButton("Ngày mai", 1),
//                   _buildDateButton("Ngày kia", 2),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               // Message
//               const Expanded(
//                 child: Center(
//                   child: Text(
//                     "Không có lịch",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildDateButton(String text, int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         margin: const EdgeInsets.only(right: 10),
//         decoration: BoxDecoration(
//           color: selectedIndex == index ? Colors.blueGrey : Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: Colors.blueGrey),
//         ),
//         child: Text(
//           text,
//           style: TextStyle(
//             color: selectedIndex == index ? Colors.white : Colors.blueGrey,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({super.key});

  @override
  State<ScheduleWidget> createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {
  int selectedDayIndex = 0;
  List<Map<String, String>> schedulesToDay = [
    {
      'subject': 'Thi môn: Chuyển đổi số',
      'time': '8.00 : 11.00',
      'location': '805-GĐ2',
      'date': '',
    },
  ];

  List<Map<String, String>> schedulesTomorrow = [
    {
      'subject': 'Thi môn: Kiểm thử phần mềm',
      'time': '9.20: 11.20',
      'location': '302-GĐ2',
      'date': '',
    },
  ];

  List<Map<String, String>> schedulesDayAfterTomorrow = [
    {
      'subject': '',
      'time': '',
      'location': '',
      'date': '',
    },
  ];

  void onSelectedDayIndex(int index) {
    setState(() {
      selectedDayIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildDateButton("Hôm nay", 0, () => onSelectedDayIndex(0)),
                  _buildDateButton("Ngày mai", 1, () => onSelectedDayIndex(1)),
                  _buildDateButton("Ngày kia", 2, () => onSelectedDayIndex(2)),
                ],
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      if (selectedDayIndex == 0) ...[_buildTodayActivities()],
                      if (selectedDayIndex == 1) ...[
                        _buildTomorrowActivities()
                      ],
                      if (selectedDayIndex == 2) ...[_buildDayAfterTomorrow()]
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDateButton(
    String text,
    int index,
    Function() onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: selectedDayIndex == index ? Colors.blueGrey : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blueGrey),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: selectedDayIndex == index ? Colors.white : Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildTodayActivities() {
    return Expanded(
      child: ListView.builder(
        itemCount: schedulesToDay.length,
        itemBuilder: (context, index) {
          final schedule = schedulesToDay[index];
          if (schedule['subject']!.isEmpty) {
            return const SizedBox.shrink();
          }
          return Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: ListTile(
              //dense: true,
              contentPadding: EdgeInsets.zero,
              title: Text(schedule['subject']!),
              subtitle: Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                        color: AppColors.red,
                        size: 15,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            schedule['time']!,
                            style: const TextStyle(fontSize: 13),
                          ),
                          if (schedule['date'] != "") Text(schedule['date']!),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColors.bgBlue,
                        size: 15,
                      ),
                      const SizedBox(width: 10),
                      Text(schedule['location']!),
                    ],
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.grey,
                size: 18,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTomorrowActivities() {
    return Expanded(
      child: ListView.builder(
        itemCount: schedulesTomorrow.length,
        itemBuilder: (context, index) {
          final schedule = schedulesTomorrow[index];
          if (schedule['subject']!.isEmpty) {
            return const SizedBox.shrink();
          }
          return Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: ListTile(
              //dense: true,
              contentPadding: EdgeInsets.zero,
              title: Text(schedule['subject']!),
              subtitle: Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                        color: AppColors.red,
                        size: 15,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            schedule['time']!,
                            style: const TextStyle(fontSize: 13),
                          ),
                          if (schedule['date'] != "") Text(schedule['date']!),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColors.bgBlue,
                        size: 15,
                      ),
                      const SizedBox(width: 10),
                      Text(schedule['location']!),
                    ],
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.grey,
                size: 18,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDayAfterTomorrow() {
    return Expanded(
      child: ListView.builder(
        itemCount: schedulesDayAfterTomorrow.length,
        itemBuilder: (context, index) {
          final schedule = schedulesDayAfterTomorrow[index];
          if (schedule['subject']!.isEmpty) {
            // return const Center(
            //   child: Text('Bạn không có hoa động nào!'),
            // );
            return const SizedBox.shrink();
          }
          return Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: ListTile(
              //dense: true,
              contentPadding: EdgeInsets.zero,
              title: Text(schedule['subject']!),
              subtitle: Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                        color: AppColors.red,
                        size: 15,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            schedule['time']!,
                            style: const TextStyle(fontSize: 13),
                          ),
                          if (schedule['date'] != "") Text(schedule['date']!),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColors.bgBlue,
                        size: 15,
                      ),
                      const SizedBox(width: 10),
                      Text(schedule['location']!),
                    ],
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.grey,
                size: 18,
              ),
            ),
          );
        },
      ),
    );
  }
}
