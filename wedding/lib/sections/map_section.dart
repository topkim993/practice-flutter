import 'package:flutter/material.dart';
import '../utils/rect_button.dart';
import 'section_container.dart';
import 'dart:js' as js;

class MapSection extends StatelessWidget {
  final String imageUrl =
      "https://cdn.imweb.me/thumbnail/20230808/43456771443e1.jpg";

  const MapSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      title: '오시는길',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 이미지 표시
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          FlatButton(
            onPressed: () {
              launchNaverMaps();
            },
            text: "네이버 길찾기",
          ),
        ],
      ),
    );
  }

  void launchNaverMaps() async {
    const url =
        'https://map.naver.com/p/entry/place/37590335?placePath=%2Fhome&c=15.00,0,0,0,dh';
    js.context.callMethod('open', [url]);
  }
}
