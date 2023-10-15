import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Volunteer extends StatefulWidget {
  final String? name;
  final String? place;
  final String? description;
  final String? email;
  final String? phone;
  final String? request_for;
  final String? address;
  // final List<String>? uploadedfile;

  Volunteer({
    @required this.name,
    @required this.place,
    @required this.description,
    @required this.email,
    @required this.phone,
    @required this.request_for,
    @required this.address,
    // @required this.uploadedfile,
  });

  @override
  // ignore: library_private_types_in_public_api
  _VolunteerState createState() => _VolunteerState();
}

final database1 = FirebaseFirestore.instance
    .collection('users')
    .where("rool", isEqualTo: 'Volunteer')
    .snapshots();

class _VolunteerState extends State<Volunteer> {
  void _showNotification() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'your_channel_id',
      'your_channel_name',
      'your_channel_description',
      importance: Importance.max,
      priority: Priority.high,
    );
    var platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    // The data you want to send with the notification
    Map<String, dynamic> notificationData = {
      'key1': 'value1',
      'key2': 'value2',
      // Add other key-value pairs as needed
    };

    // Show the notification with the provided data
    await flutterLocalNotificationsPlugin.show(
      0, // Notification ID, a unique integer for each notification
      'Notification Title',
      'Notification Body',
      platformChannelSpecifics,
      payload: notificationData.toString(), // Pass the data as payload
    );
  }

  int quantity = 1;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  Widget build(BuildContext context) {
    // MyProvider provider = Provider.of<MyProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Volunteers"),
      ),
      body: StreamBuilder(
        stream: database1,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            physics: ScrollPhysics(),
            children: snapshot.data!.docs.map((document) {
              return Card(
                margin: EdgeInsets.only(top: 10, left: 6, right: 6),
                elevation: 4,
                child: ListTile(
                  visualDensity: VisualDensity.standard,
                  leading: Text(
                    document['fullName'],
                    style: TextStyle(fontSize: 20),
                  ),
                  title: Text(
                    document['area'].toString(),
                    style: TextStyle(color: Colors.green),
                  ),
                  subtitle: Text(
                    document['phone'],
                  ),
                  trailing: ElevatedButton(
                    onPressed: _showNotification,
                    child: Text('Send Message'),
                  ),
                ),
              );
//                   );
            }).toList(),
          );
        },
      ),
    );
  }
}
