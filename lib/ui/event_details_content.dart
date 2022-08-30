import 'package:flutter/material.dart';
import 'package:meditation_app/models/event.dart';
import 'package:meditation_app/models/guest.dart';
import 'package:meditation_app/styleguide.dart';
import 'package:provider/provider.dart';

class EventDetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 100),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.2,
            ),
            child: Text(
              event.title,
              style: eventWhiteTitleTextStyle,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
            child: FittedBox(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    event.location,
                    style: eventLocationTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Guests',
              style: guestTextStyle,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for (final guest in guests)
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipOval(
                      child: Image.asset(
                        guest.imagePath,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: event.punchLine1,
                    style: punchLine1TextStyle,
                  ),
                  TextSpan(
                    text: event.punchLine2,
                    style: punchLine2TextStyle,
                  ),
                ],
              ),
            ),
          ),
          if (event.description.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                event.description,
                style: eventLocationTextStyle,
              ),
            ),
          if (event.galleryImages.isNotEmpty) Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 16, top : 30,),
            child: Text(
              'Gallery',
              style: guestTextStyle,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for (final galleryImagePath in event.galleryImages)
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 30, ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        galleryImagePath,
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
