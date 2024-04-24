import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/features/weather/widgets/background_blur_widget.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const BackgroundBlurWidget(
              code: 500,
              dayTimes: DayTimes.day,
            ),
            Center(
              child:
                  LoadingAnimationWidget.inkDrop(color: Colors.white, size: 40),
            )
          ],
        ),
      ),
    );
  }
}
