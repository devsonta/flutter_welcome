import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:welcome_loginsignup_dashboard/controller/gender_selection_controller.dart';

class GenderSelection extends StatelessWidget {
  GenderSelection({
    Key? key,
  }) : super(key: key);

  GenderSelectionController genderSelectionController =
      Get.put(GenderSelectionController());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        const Expanded(
          child: Text(
            'Gender',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
        ),
        Row(
          children: [
            Obx(() => Radio(
                  value: 'Male',
                  groupValue: genderSelectionController.selectedGender.value,
                  onChanged: (value) {
                    this.genderSelectionController.onChangeGender(value);
                  },
                  activeColor: Colors.purple,
                  fillColor: MaterialStateProperty.all(Colors.purple),
                )),
            const Text(
              'Male',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Obx(() => Radio(
                  value: 'FeMale',
                  groupValue: genderSelectionController.selectedGender.value,
                  onChanged: (value) {
                    this.genderSelectionController.onChangeGender(value);
                  },
                  activeColor: Colors.purple,
                  fillColor: MaterialStateProperty.all(Colors.purple),
                )),
            const Text(
              'FeMale',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          ],
        )
      ],
    ));
  }
}
