import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:voyager_app/models/hive_models/goal_model.dart';

class MainScreenController extends GetxController {
  final Rx<ScrollController> _scrollController = ScrollController().obs;

  Rx<TextEditingController> whatController = TextEditingController().obs;
  Rx<TextEditingController> whenController = TextEditingController().obs;
  Rx<TextEditingController> howController = TextEditingController().obs;
  Rx<TextEditingController> whyController = TextEditingController().obs;
  String what = '';
  String when = '';
  String how = '';
  String why = '';
  Box? goalBox;

  List<Map<String, String>> hiveList = [];

  RxString headingText = 'Add your goal'.obs;
  Rx<TextStyle> selectedSectionStyle =
      const TextStyle(color: Colors.blue, fontWeight: FontWeight.w900).obs;
  Rx<TextStyle> whatStyle = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500)
      .obs;

  Rx<TextStyle> whenStyle = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500)
      .obs;

  Rx<TextStyle> howStyle = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500)
      .obs;

  Rx<TextStyle> whyStyle = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500)
      .obs;

  @override
  void onInit() {
    super.onInit();
    headingText.value = 'Add your goal';
    whatStyle.value =
        const TextStyle(color: Colors.blue, fontWeight: FontWeight.w900);
    howStyle.value = TextStyle(
        color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
    whenStyle.value = TextStyle(
        color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
    whyStyle.value = TextStyle(
        color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
    // Perform your initialization logic here
    // For example, fetching data, initializing variables, etc.
  }

  void switchHeadingText(
    String h,
  ) {
    if (h == 'when') {
      headingText.value = 'Add a deadline';
      whenStyle.value =
          const TextStyle(color: Colors.blue, fontWeight: FontWeight.w900);
      whatStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
      howStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
      whyStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
    }

    if (h == 'how') {
      headingText.value = 'Your plan';
      howStyle.value =
          const TextStyle(color: Colors.blue, fontWeight: FontWeight.w900);
      whatStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
      whenStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
      whyStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
    }

    if (h == 'why') {
      headingText.value = 'Why do this';
      whyStyle.value =
          const TextStyle(color: Colors.blue, fontWeight: FontWeight.w900);
      whatStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
      whenStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
      howStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
    }

    if (h == 'what') {
      headingText.value = 'Add your goal';
      whatStyle.value =
          const TextStyle(color: Colors.blue, fontWeight: FontWeight.w900);
      howStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
      whenStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
      whyStyle.value = TextStyle(
          color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);
    }
  }

  void scrollToElement(BuildContext elementContext) {
    final RenderObject? object = elementContext.findRenderObject();
    final RenderAbstractViewport viewport = RenderAbstractViewport.of(object);
    final double offset = object!.getTransformTo(viewport).getTranslation().y;

    _scrollController.value.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  //hive function need to cross check again compulsorily

  addValuesToHive() async {
    goalBox = Hive.box<GoalModel>('goalBox');
    for (var data in hiveList) {
      data.forEach((key, value) {
        if (key == 'What') {
          what = value;
        } else if (key == 'When') {
          when = value;
        } else if (key == 'How') {
          how = value;
        } else if (key == 'Why') {
          why = value;
        }
      });
    }
    GoalModel model = GoalModel(what: what, when: when, how: how, why: why);
    log('model :${model.what}');

    await goalBox!.add(model);

    final k = goalBox!.getAt(0);

    log('h:$k');
  }

  tcfun() {
    hiveList.add({'Why': whyController.value.text});
    //  widget.tc!.animateTo(0);
    log(hiveList.toString());
    addValuesToHive();
  }

  void printval(val) {
    log(val);
  } 
   void handleSubmit(String value) {
    // Your logic when the text field is submitted
    log('Submitted: $value');
  }

}
