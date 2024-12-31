// web_image_picker.dart

import 'dart:html' as html;

Future<void> pickImageWeb(Function(String) onImagePicked) async {
  final html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
  uploadInput.accept = 'image/*';
  uploadInput.click();
  uploadInput.onChange.listen((e) async {
    final files = uploadInput.files;
    if (files!.isNotEmpty) {
      final reader = html.FileReader();
      reader.readAsDataUrl(files[0]);
      reader.onLoadEnd.listen((e) {
        onImagePicked(reader.result as String);
      });
    }
  });
}
