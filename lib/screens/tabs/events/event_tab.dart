import 'package:flutter/material.dart';
import 'package:flash_chat/components/TabTitleText.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flash_chat/models/datamodels.dart';
import 'package:flash_chat/components/EventCard.dart';
import 'package:flash_chat/services/FirebaseDatabase.dart';

import '../../../constants.dart';

class EventTabScreen extends StatefulWidget {
  @override
  _EventTabScreenState createState() => _EventTabScreenState();
}

class _EventTabScreenState extends State<EventTabScreen> {



//  List<Widget> generateEvents(QuerySnapshot eventsSnapshot) async {
//    List<Widget> ls = [];
//    List<DocumentSnapshot> docs = eventsSnapshot.documents;
//    for(int i = 0; i < docs.length; i++) {
//      Event event = Event.fromMap(docs[i].data);
//      var storedUsers = await Provider.of<DatabaseService>(context).getUsersFromUIDList(event.participants);
//
//    }
//    return ls;
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: PreferredSize(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: TabTitleText(title: "Events")
                ),
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(100),
      ),

      // BODY
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  "Today's events",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    color: mainGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            _buildEventList(),
          ],
        ),
      ),
    );


  }

  Widget _buildEventList() {
    List<Widget> events = Provider.of<List<Event>>(context).map(
        (event) {
          return EventCard(event: event,);
        }
    ).toList();
    return Container(
      child: Column(
        children: events,
      ),
    );
  }
}
