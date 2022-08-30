import 'package:flutter/material.dart';
import 'package:meditation_app/models/category.dart';
import 'package:meditation_app/models/event.dart';
import 'package:meditation_app/styleguide.dart';
import 'package:meditation_app/ui/category_widget.dart';
import 'package:meditation_app/ui/event_details.dart';
import 'package:meditation_app/ui/event_widget.dart';
import 'package:provider/provider.dart';

import 'package:meditation_app/app_state.dart';
import 'homepage_background.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Stack(
          children: <Widget>[
            HomePageBackground(
              screenHeight: MediaQuery.of(context).size.height,
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Local Events',
                            style: fadedTextStyle,
                          ),
                          Spacer(),
                          Icon(
                            Icons.person_outline,
                            color: Color(0x99ffffff),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        'What\'s Up',
                        style: whiteHeadingTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 10.0,
                      ),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) =>
                            SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              for (final category in categories)
                                CategoryWidget(category: category),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) => Column(
                          children: <Widget>[
                            for (final event in events.where((e) => e
                                .categoryIds
                                .contains(appState.selectedCategroyId)))
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          EventDetailsPage(event: event),
                                    ),
                                  );
                                },
                                child: EventWidget(
                                  event: event,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
