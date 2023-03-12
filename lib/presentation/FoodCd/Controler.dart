import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/reserve_table_screen/models/reserve_table_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomsSheetCon extends GetxController {
  var count=0.obs;
  void AddcOUNT(){
    count.value=count.value+1;
    print(count.value);
  }
}