import 'package:flutter/material.dart';
import 'package:meditation_app/models/event.dart';
import 'package:meditation_app/ui/event_details_background.dart';
import 'package:meditation_app/ui/event_details_content.dart';
import 'package:provider/provider.dart';

class EventDetailsPage extends StatelessWidget {
  final Event event;

  const EventDetailsPage({this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<Event>.value(
        value: event,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            EventDetailsBackground(),
            EventDetailsContent(),
          ],
        ),
      ),
    );
  }
}
