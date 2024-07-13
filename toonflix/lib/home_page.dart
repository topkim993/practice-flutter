import 'package:flutter/material.dart';
import 'package:toonflix/sections/information_section.dart';
import 'sections/welcome_section.dart';
import 'sections/photos_section.dart';
import 'sections/map_section.dart';
import 'sections/rsvp_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(),
      ),
      body: ListView(
        children: [
          const WelcomeSection(),
          PhotosSection(),
          const MapSection(),
          const RsvpSection(),
          const InformationSection(),
        ],
      ),
    );
  }
}
