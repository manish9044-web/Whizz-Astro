// mobile_image_picker.dart

import 'package:image_picker/image_picker.dart';

Future<String?> pickImageMobile() async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  return image?.path;
}
