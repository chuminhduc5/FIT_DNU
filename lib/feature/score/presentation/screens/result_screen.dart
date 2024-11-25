import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:fit_dnu/feature/score/presentation/screens/learning_result_screen.dart';
import 'package:fit_dnu/feature/score/presentation/screens/score_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: AppColors.bgColor,
          appBar: AppBar(
            backgroundColor: AppColors.bgAppbar,
            title: const Text(
              'Góc học tập',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.textWhite,
              ),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/notification');
                },
                icon: const Icon(Icons.notifications),
              )
            ],
            iconTheme: const IconThemeData(color: AppColors.textWhite),
          ),
          body: Column(
            children: [
              Container(
                color: AppColors.bgWhite,
                child: const TabBar(
                    tabs: <Widget>[
                      Tab(text: 'Môn học'),
                      Tab(text: 'Điểm thi'),
                    ],
                    labelColor: AppColors.textRed,
                    indicatorPadding: EdgeInsets.zero,
                    indicatorColor: AppColors.bgRed,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: AppColors.bgWhite,
                    dividerHeight: 0),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    LearningResultScreen(),
                    ScoreScreen(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
