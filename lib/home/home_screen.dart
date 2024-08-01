import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/home/background_effect.dart';
import 'package:future_flutter_web_2024/home/coming_soon_text.dart';
import 'package:future_flutter_web_2024/home/flutter_logo_bg.dart';
import 'dart:html' as html;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: _fab(),
      body: const Stack(
        children: [
          Positioned.fill(child: BackgroundEffect()),
          FlutterLogoBg(),
          ComingSoonText(),
        ],
      ),
    );
  }

  FloatingActionButton _fab() {
    return FloatingActionButton.extended(
      onPressed: () => goTicketAlertPage(),
      backgroundColor: Colors.grey.shade900,
      label: const Row(children: [
        Icon(Icons.notifications, color: Colors.white),
        SizedBox(width: 12),
        Text('티켓 오픈시 알림받기',
            style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
      ]),
    );
  }

  static const alertTicketUrl = 'https://forms.gle/vM6fBYQxSodSUAGj6';

  void goTicketAlertPage() {
    html.window.open(alertTicketUrl, '_blank');
  }
}
