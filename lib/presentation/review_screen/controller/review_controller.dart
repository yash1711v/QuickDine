import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/review_screen/models/review_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class ReviewController extends GetxController {
  Rx<ReviewModel> reviewModelObj = ReviewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
