import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:fit_dnu/feature/score/presentation/widgets/checkbox_evaluate_widget.dart';
import 'package:fit_dnu/feature/score/presentation/widgets/select_school_year_widget.dart';
import 'package:fit_dnu/feature/score/presentation/widgets/select_semester_widget.dart';
import 'package:fit_dnu/feature/score/presentation/widgets/select_subject_widget.dart';
import 'package:fit_dnu/feature/score/presentation/widgets/select_teacher_widget.dart';
import 'package:flutter/material.dart';

class InstructorEvaluationScreen extends StatefulWidget {
  const InstructorEvaluationScreen({super.key});

  @override
  State<InstructorEvaluationScreen> createState() =>
      _InstructorEvaluationScreenState();
}

class _InstructorEvaluationScreenState
    extends State<InstructorEvaluationScreen> {
  bool isCompletelyAgree = false;
  bool isAgree = false;

  bool isEvaluate = false;
  bool isLockedCheckbox = false;

  void onEvaluateChanged(bool? value) {
    if (!isLockedCheckbox) {
      setState(() {
        isEvaluate = value ?? false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFFEFEFEF),
      backgroundColor: AppColors.bgWhite,
      appBar: AppBar(
        title: const Text(
          'Đánh giá giảng viên',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.textWhite),
        ),
        backgroundColor: AppColors.bgOrange,
        iconTheme: const IconThemeData(color: AppColors.bgWhite),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Column(
                  children: [
                    Text(
                      'TRƯỜNG ĐẠI HỌC ĐẠI NAM',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Ý KIẾN PHẢN HỒI CỦA SINH VIÊN\nVỀ HOẠT ĐỘNG GIẢNG DẠY CỦA GIẢNG VIÊN',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // const Text('Học kỳ 1, năm học 2020 - 2021',
              //     style: TextStyle(fontSize: 16)),
              // const SizedBox(height: 8),
              // const Text(
              //   'Môn học/học phần: An toàn ứng dụng web và cơ sở dữ liệu',
              //   style: TextStyle(fontSize: 16),
              // ),
              // const SizedBox(height: 4),
              // const Text('Lớp: INT14105-20201-02-LT',
              //     style: TextStyle(fontSize: 16)),
              // const SizedBox(height: 4),
              // const Text('Họ và tên giảng viên: Ngô Quốc Dũng',
              //     style: TextStyle(fontSize: 16)),
              // const SizedBox(height: 16),
              const Text(
                'Để nâng cao hơn nữa chất lượng giảng dạy, đáp ứng tốt hơn nhu cầu của người học, '
                'Học viện Công nghệ Bưu chính Viễn thông mong muốn trên tinh thần trung thực và ý thức xây dựng, '
                'các học viên, sinh viên cho ý kiến đối với giảng viên đã giảng dạy môn học/học phần (bằng cách đánh dấu X vào ô thích hợp ở bảng dưới đây).',
                style: TextStyle(),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 8),
              const Text(
                'Bảng hỏi khảo sát các học phần dành cho sinh viên',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const SelectSchoolYearWidget(),
              const SizedBox(height: 8),
              const SelectSemesterWidget(),
              const SizedBox(height: 8),
              const SelectSubjectWidget(),
              const SizedBox(height: 8),
              const SelectTeacherWidget(),
              const SizedBox(height: 8),
              // const Text(
              //   '* Mục đích, yêu cầu, nội dung của môn học/học phần đã được giảng viên truyền đạt rõ ràng tới người học.',
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // ),
              const Text(
                'Phần 1. Cung cấp thông tin học phần',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),
              const Text(
                '1. Giảng viên phổ biến đầy đủ thông tin về mục tiêu, ý nghĩa của học phần đến người học',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '2. Giảng viên cung cấp đầy đủ thông tin và tài liệu học tập của học phần tới người học',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '3. Giảng viên phổ biến đầy đủ thông tin về hình thức kiểm tra, kế hoạch đánh giá học phần tới người học, trọng số các đầu điểm của học phần',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '4. Người học được phổ biến về sự đóng góp của học phần vào chuẩn đầu ra của chương trình đào tạo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const Text(
                'Phần 2. Nội dung giảng dạy của giảng viên',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),
              const Text(
                '5. Nội dung học phần đáp ứng chuẩn đầu ra tương ứng của học phần',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '6. Nội dung học phần đáp ứng chuẩn đầu ra của chương trình đào tạo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '7. Nội dung học phần cập nhật các thông tin, kiến thức mới',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '8. Giảng viên thực hiện giảng dạy các nội dung trong đề cương chi tiết học phần',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const Text(
                'Phần 3. Hoạt động giảng dạy của giảng viên',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),
              const Text(
                '9. Người học được hướng dẫn phương pháp học tập, nghiên cứu và các kỹ năng bổ trợ phục vụ học tập và học tập suốt đời',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '10. Các hoạt động dạy học phù hợp với chuẩn đầu ra của học phần',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '11. Phương pháp giảng dạy của giảng viên dễ tiếp thu và lôi cuốn người học tích cực tham gia vào các hoạt động học tập',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '12. Slide bài giảng được thiết kế đẹp mắt, thu hút, mạch lạc, súc tích',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '13. Giảng viên thực hiện lịch giảng dạy theo quy định: lên giảng đúng giờ, dậy đúng thời khoá biểu',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const Text(
                'Phần 4. Kiểm tra đánh giá',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),
              const Text(
                '14. Giảng viên công bằng trong đánh giá kết quả học phần',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '15. Phương pháp kiểm tra đánh giá phù hợp với việc đánh giá mức độ đạt chuẩn đầu ra của học phần',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '16. Kết quả kiểm tra đánh giá phản ánh đúng năng lực của người học',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '17. Phản hồi về kết quả đánh giá theo quá trình (chuyên cần, thường xuyên, giữa kỳ…) giúp người học cải thiện việc học tập',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '18. Người học dễ dàng thực hiện quy trình khiếu nại về kết quả học tập khi cần',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const Text(
                'Phần 5. Tác phong sư phạm',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),
              const Text(
                '19. Trang phục khi lên lớp của giảng viên gọn gàng, lịch sự, thẩm mỹ, đúng chuẩn mực',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '20. Giảng viên có thái độ thân thiện với người học ngôn ngữ diễn đạt chuẩn mực',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const SizedBox(height: 8),
              const Text(
                '21. Giảng viên quan tâm, đến sự tiến bộ của người học cả kiến thức, kỹ năng và thái độ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const Text(
                'Phần 6. Cảm nhận chung về hoạt động giảng dạy',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),
              const Text(
                '22. Anh/chị cảm thấy hài lòng về chất lượng và hiệu quả giảng dạy, hướng dẫn của giảng viên đối với tiến bộ học tập của bản thân',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Không đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Phân vân',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Đồng ý',
              ),
              CheckboxEvaluateWidget(
                value: isEvaluate,
                onChanged: onEvaluateChanged,
                title: 'Hoàn toàn đồng ý',
              ),

              const Text(
                'Phần 7. Ý kiến đóng góp của Anh/chị nhằm nâng cao chất lượng giảng dạy của Nhà trường',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Implement submit action
                },
                child: Text('Gửi phản hồi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
