import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_flutter_web_2024/sessions/session_data_model.dart';
import 'package:future_flutter_web_2024/style/color.dart';

class SessionCard extends StatelessWidget {
  final SessionData data;

  const SessionCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final double horizontalMargin = width > 820 ? width * 0.1 : 16;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: 40,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            primaryColor.shade100,
            primaryColor.shade500,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          if (data.isEnglish)
            const Positioned(
              top: 0,
              right: 0,
              child: Text('해당 세션은 영어로 진행 됩니다.'),
            ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: SpeakerInfo(data: data.speaker),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.time,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      data.title,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 32),
                    if (data.description != null)
                      Text(
                        data.description!,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SpeakerInfo extends StatefulWidget {
  final SpeakerData data;

  const SpeakerInfo({super.key, required this.data});

  @override
  State<SpeakerInfo> createState() => _SpeakerInfoState();
}

class _SpeakerInfoState extends State<SpeakerInfo>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    final curveAnimation = CurvedAnimation(
        parent: animationController, curve: Curves.elasticInOut);
    animation = Tween<double>(begin: 0, end: 3.14 * 2).animate(curveAnimation);
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: primaryColor.shade600),
              color: Colors.white,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(38),
              child: widget.data.imageUrl == null
                  ? AnimatedBuilder(
                      animation: animation,
                      child: SvgPicture.asset('assets/svg/logo.svg'),
                      builder: (context, child) => Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(animation.value),
                        child: child,
                      ),
                    )
                  : Image.network(widget.data.imageUrl!, fit: BoxFit.cover),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.name,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.data.bio,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
