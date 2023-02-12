import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/promo_screen/models/promo_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class PromoController extends GetxController {
  Rx<PromoModel> promoModelObj = PromoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
