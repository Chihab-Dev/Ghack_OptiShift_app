import 'package:flutter/material.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DeliveredView extends StatelessWidget {
  const DeliveredView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageAsset.deliveryBackground,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 40,
                  color: ColorManager.dark,
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
              child: Container(
                // height: 600,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 350,
                          child: Lottie.asset(LottieAsset.delivered),
                        ),
                        Text(
                          'Delivery Completed',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: getlargeStyle(color: ColorManager.dark),
                        ),
                        const SizedBox(height: AppSize.s12),
                        Text(
                          'Thnks for using our app!',
                          textAlign: TextAlign.center,
                          style: getMeduimStyle(color: ColorManager.darkGrey),
                        ),
                        deviderContainer(),
                        ListTile(
                          leading: Image.asset(ImageAsset.picture2),
                          title: Text(
                            'Chihab Lahmari',
                            style: getRegularStyle(color: ColorManager.dark),
                          ),
                        ),
                        deviderContainer(),
                        const MyTimeLine(isFirst: true, isLast: false, text: 'Angle bd Emir A & r.JFK, 31200'),
                        const MyTimeLine(isFirst: false, isLast: true, text: '44 rue Ibn Badis, 02000'),
                        deviderContainer(),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                          Text(
                            '23 Feb 2024',
                            textAlign: TextAlign.center,
                            style: getMeduimStyle(color: ColorManager.darkGrey),
                          ),
                          Text(
                            '13:00PM',
                            textAlign: TextAlign.center,
                            style: getMeduimStyle(color: ColorManager.darkGrey),
                          ),
                          Text(
                            'ID: 23735066',
                            textAlign: TextAlign.center,
                            style: getMeduimStyle(color: ColorManager.darkGrey),
                          ),
                        ]),
                        const SizedBox(height: AppSize.s40),
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ],
    );
  }

  Container deviderContainer() {
    return Container(
      height: 2,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      color: ColorManager.grey,
    );
  }
}

class MyTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final String text;
  const MyTimeLine({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(left: 10),
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: ColorManager.yellow),
        indicatorStyle: IndicatorStyle(
          width: 30,
          iconStyle: IconStyle(
            iconData: Icons.place_outlined,
            color: ColorManager.dark,
          ),
          color: ColorManager.yellow,
        ),
        endChild: Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: getMeduimStyle(color: ColorManager.dark),
          ),
        ),
      ),
    );
  }
}
