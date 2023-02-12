import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/feedback_screen/models/feedback_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class FeedbackController extends GetxController {
  Rx<FeedbackModel> feedbackModelObj = FeedbackModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
