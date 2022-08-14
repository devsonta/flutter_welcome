import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:welcome_loginsignup_dashboard/controller/signup_controller.dart';

class SignUpProfilePicture extends StatelessWidget {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();
  SignUpController signUpController = Get.find<SignUpController>();
  SignUpProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Obx(() => CircleAvatar(
              backgroundImage: signUpController.isProficPicPathSet.value == true
                  ? FileImage(File(signUpController.proficPicPath.value))
                  : AssetImage('assets/images/profilepic.png') as ImageProvider,
              radius: 80,
            )),
        Positioned(
          bottom: 0,
          child: InkWell(
            child: Icon(Icons.camera),
            onTap: () {
              print('Camera clicked');
              showModalBottomSheet(
                  context: context, builder: (context) => bottomSheet(context));
            },
          ),
        )
      ],
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          const Text(
            'Choose Profile Photo',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  print('Gallery');
                  takePhoto(ImageSource.gallery);
                },
                child: Column(
                  children: const [
                    Icon(
                      Icons.image,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Gallery',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 80),
              InkWell(
                onTap: () {
                  takePhoto(ImageSource.camera);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.camera,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Camera',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> takePhoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);
    signUpController.setProfileImagePath(pickedFile!.path);
    print(pickedFile);
    Get.back();
  }
}
