// models.dart
import 'package:cloud_firestore/cloud_firestore.dart';

class Report {
  String id;
  String title;
  String priceRange;
  String price;
  String fileUrl;

  Report({
    required this.id,
    required this.title,
    required this.priceRange,
    required this.price,
    this.fileUrl = '',
  });

  factory Report.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Report(
      id: doc.id,
      title: data['title'] ?? '',
      priceRange: data['priceRange'] ?? '',
      price: data['price'] ?? '',
      fileUrl: data['fileUrl'] ?? '',
    );
  }
}

class Booking {
  String userId;
  String reportId;
  String status;
  String downloadUrl;

  Booking({
    required this.userId,
    required this.reportId,
    required this.status,
    this.downloadUrl = '',
  });

  factory Booking.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Booking(
      userId: data['userId'] ?? '',
      reportId: data['reportId'] ?? '',
      status: data['status'] ?? 'booked',
      downloadUrl: data['downloadUrl'] ?? '',
    );
  }
}
