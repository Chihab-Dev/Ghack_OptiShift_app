import 'package:flutter/material.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OrderStateView extends StatelessWidget {
  const OrderStateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'ORDER STATES',
          style: getRegularStyle(color: ColorManager.dark),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 35,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            color: ColorManager.whiteYellow,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Estimated time',
                        style: getMeduimStyle(color: ColorManager.darkGrey),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '35 min',
                        style: getMeduimStyle(color: ColorManager.dark),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Order ID ',
                        style: getMeduimStyle(color: ColorManager.darkGrey),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '34134234',
                        style: getMeduimStyle(color: ColorManager.dark),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                MyTimeLine(
                  isFirst: true,
                  isPast: true,
                  isLast: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'ORDER PLACED',
                        style: getRegularStyle(color: ColorManager.dark),
                      ),
                      Text(
                        'Your order is placed',
                        style: getMeduimStyle(color: ColorManager.white),
                      ),
                      Text(
                        '12:05 pm,23 Feb2024',
                        style: getMeduimStyle(color: ColorManager.white),
                      ),
                    ],
                  ),
                ),
                MyTimeLine(
                  isFirst: false,
                  isPast: true,
                  isLast: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'ORDER CHARGING',
                        style: getRegularStyle(color: ColorManager.dark),
                      ),
                      Text(
                        'Your product packaging has been ready',
                        maxLines: 3,
                        style: getMeduimStyle(color: ColorManager.white),
                      ),
                    ],
                  ),
                ),
                MyTimeLine(
                  isFirst: false,
                  isPast: true,
                  isLast: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "ORDER ON IT'S WAY",
                        style: getRegularStyle(color: ColorManager.dark),
                      ),
                      const SizedBox(height: 14),
                      InkWell(
                        onTap: () async {
                          String googleUrl =
                              "https://www.google.com/maps/place/Higher+National+School+of+Computer+Science/@36.7050299,3.1713407,17z/data=!3m1!4b1!4m6!3m5!1s0x128e522f3f317461:0x215c157a5406653c!8m2!3d36.7050299!4d3.1739156!16s%2Fg%2F120hhrrs?entry=ttu";

                          print(googleUrl);

                          await canLaunchUrlString(googleUrl)
                              ? await launchUrlString(googleUrl)
                              : throw "can't launch URL $googleUrl";
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorManager.whiteYellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'TRACK ORDER',
                              style: getRegularStyle(color: ColorManager.dark),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                MyTimeLine(
                  isFirst: false,
                  isPast: false,
                  isLast: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'ORDER DELIVERED',
                        style: getRegularStyle(color: ColorManager.dark),
                      ),
                      Text(
                        'Your product is ready to delivered',
                        maxLines: 3,
                        style: getMeduimStyle(color: ColorManager.white),
                      ),
                    ],
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

class MyTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final Widget child;
  const MyTimeLine({
    super.key,
    required this.isFirst,
    required this.isPast,
    required this.isLast,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: isPast ? ColorManager.yellow : ColorManager.whiteYellow),
        indicatorStyle: IndicatorStyle(
          width: 40,
          color: isPast ? ColorManager.yellow : ColorManager.whiteYellow,
          iconStyle: IconStyle(
            iconData: Icons.check,
            color: isPast ? ColorManager.dark : ColorManager.specielGrey,
          ),
        ),
        endChild: TimeLineCard(
          isPast: isPast,
          child: child,
        ),
      ),
    );
  }
}

class TimeLineCard extends StatelessWidget {
  final bool isPast;
  final Widget child;
  const TimeLineCard({super.key, required this.isPast, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 120,
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isPast ? ColorManager.yellow : ColorManager.whiteYellow,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
