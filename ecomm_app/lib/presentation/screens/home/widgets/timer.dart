import 'dart:async';
import 'package:flutter/material.dart';

import '../../../../global/themes/app_colors.dart';

class CountDownPage extends StatefulWidget {
  const CountDownPage({Key? key}) : super(key: key);

  @override
  State<CountDownPage> createState() => _CountDownPageState();
}

class _CountDownPageState extends State<CountDownPage> {
  static const countDownDuration = Duration(minutes: 10);
  Duration duration = const Duration();
  Timer? timer;

  bool isCountDown = true;

  @override
  void initState() {
    super.initState();
    startTimer();
    reset();
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }

  void reset() {
    if (isCountDown) {
      setState(() => duration = countDownDuration);
    } else {
      setState(() => duration = const Duration());
    }
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    final addSeconds = isCountDown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Timer works');
    return Stack(
      children: [
        Positioned(
          top: 130,
          left: 20,
          bottom: 0,
          child: SizedBox(
            // width: 100,height: 100,
            //color: Colors.red,
            child: Column(children: [buildTime()]),
          ),
        ),
      ],
    );
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        builderTimeCard(time: hours, header: 'Hours'),
        const SizedBox(
          width: 5,
        ),
        builderTimeCard(time: minutes, header: 'Minutes'),
        const SizedBox(
          width: 5,
        ),
        builderTimeCard(time: seconds, header: 'Seconds'),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }

  Widget builderTimeCard({required String time, required String header}) =>
      Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          time,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
            fontSize: 24,
          ),
        ),
      );
}
