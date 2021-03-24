import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;

class Countdown extends StatelessWidget {
  final int timestamp;
  final CountdownStyle styles = di();

  Countdown({@required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      endTime: timestamp * 1000,
      widgetBuilder: (_, CurrentRemainingTime time) {
        if (time == null) {
          return Text(S.of(context).countDownSoldOut);
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    time.days != null
                        ? time?.days?.toString()?.length > 1
                            ? time?.days?.toString()
                            : '0' + time?.days?.toString()
                        : '00',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: appColors.darkGray)),
                Text('D')
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                ':',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: appColors.darkGray),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    time.hours != null
                        ? time?.hours?.toString()?.length > 1
                            ? time?.hours?.toString()
                            : '0' + time?.hours?.toString()
                        : '00',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: appColors.darkGray)),
                Text('M')
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                ':',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: appColors.darkGray),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    time.min != null
                        ? time?.min?.toString()?.length > 1
                            ? time?.min?.toString()
                            : '0' + time?.min?.toString()
                        : '00',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: appColors.darkGray)),
                Text('H')
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                ':',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: appColors.darkGray),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  time.sec != null
                      ? time?.sec?.toString()?.length > 1
                          ? time?.sec?.toString()
                          : '0' + time?.sec?.toString()
                      : '00',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: appColors.darkGray),
                ),
                Text('S')
              ],
            )
          ],
        );
      },
    );
  }
}

class CountdownStyle {
  final CountDownTextColor = appColors.cropper;
}
