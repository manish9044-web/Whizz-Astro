import 'package:flutter/material.dart';
import 'models.dart'; // Import your Report model

class AstrologerReportPage extends StatelessWidget {
  final List<Report> reports; // List of reports
  AstrologerReportPage({required this.reports});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Astrologer Reports'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.75, // Adjust as needed for item aspect ratio
        ),
        itemCount: reports.length,
        itemBuilder: (context, index) {
          return ReportCard(report: reports[index]);
        },
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final Report report;
  ReportCard({required this.report});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReportDetailsPage(report: report)),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[300], // Placeholder color
                child: Center(
                  child: Text(
                    'Report Image', // Placeholder text
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    report.title,
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    report.price,
                    style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ReportDetailsPage extends StatelessWidget {
  final Report report;
  ReportDetailsPage({required this.report});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(report.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Report Title: ${report.title}'),
            Text('Report Price: ${report.price}'),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
