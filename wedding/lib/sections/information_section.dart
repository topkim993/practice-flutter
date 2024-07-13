import 'package:flutter/material.dart';
import 'section_container.dart';

class InformationSection extends StatelessWidget {
  const InformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: 'Information Section',
      child: Text("data"),
    );
  }
}
