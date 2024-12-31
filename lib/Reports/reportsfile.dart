import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      home: TaskListScreen(),
    );
  }
}

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg/150'),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TaskCard(
            color: Colors.lightBlue,
            title: 'Myself',
            activeTasks: 2,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetailScreen(
                    title: 'Myself',
                    timeLeft: '2h 45m',
                    date: 'Dec 12, 2022',
                    description:
                        'We have to buy some fresh bread, fruit, and vegetables. Supply of water is running out.',
                    createdBy: 'Matt',
                  ),
                ),
              );
            },
          ),
          TaskCard(
            color: Colors.yellow,
            title: 'Sweet Home',
            activeTasks: 4,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetailScreen(
                    title: 'Sweet Home',
                    timeLeft: '2h 45m',
                    date: 'Dec 12, 2022',
                    description:
                        'We have to buy some fresh bread, fruit, and vegetables. Supply of water is running out.',
                    createdBy: 'Matt',
                  ),
                ),
              );
            },
          ),
          TaskCard(
            color: Colors.grey,
            title: 'Work',
            activeTasks: 6,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetailScreen(
                    title: 'Work',
                    timeLeft: '2h 45m',
                    date: 'Dec 12, 2022',
                    description:
                        'We have to buy some fresh bread, fruit, and vegetables. Supply of water is running out.',
                    createdBy: 'Matt',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final Color color;
  final String title;
  final int activeTasks;
  final VoidCallback onTap;

  TaskCard({
    required this.color,
    required this.title,
    required this.activeTasks,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        title: Text(title),
        subtitle: Text('$activeTasks Active Tasks'),
        onTap: onTap,
      ),
    );
  }
}

class TaskDetailScreen extends StatelessWidget {
  final String title;
  final String timeLeft;
  final String date;
  final String description;
  final String createdBy;

  TaskDetailScreen({
    required this.title,
    required this.timeLeft,
    required this.date,
    required this.description,
    required this.createdBy,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Time Left: $timeLeft',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Text(
              date,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Text(
              'Created by: $createdBy',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add your drive link here
                final url = 'https://drive.google.com/your_file_link';
                // Implement logic to open the link or download the file
              },
              child: Text('Download File'),
            ),
          ],
        ),
      ),
    );
  }
}
