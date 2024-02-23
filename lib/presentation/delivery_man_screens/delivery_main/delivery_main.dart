import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';
import 'package:ghack_app/presentation/delivery_man_screens/delivered/delivered.dart';
import 'package:ghack_app/presentation/delivery_man_screens/feedback/feedback.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DeliveryMainView extends StatefulWidget {
  const DeliveryMainView({super.key});

  @override
  State<DeliveryMainView> createState() => _DeliveryMainViewState();
}

class _DeliveryMainViewState extends State<DeliveryMainView> {
  String? startDeliveringDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
          icon: SizedBox(
            width: AppSize.s50,
            height: AppSize.s50,
            child: Image.asset(
              ImageAsset.menu,
            ),
          ),
        ),
        actions: [
          SizedBox(
            width: AppSize.s50,
            height: AppSize.s50,
            child: Image.asset(
              ImageAsset.picture2,
            ),
          ),
          const SizedBox(width: AppPadding.p14),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image.asset(
            //   ImageAsset.deliveryMainImage,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
              child: Lottie.asset(LottieAsset.truckDelivery),
            ),
            const SizedBox(height: AppSize.s20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 330,
                height: 75,
                decoration: BoxDecoration(
                  color: ColorManager.whiteYellow,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p12),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: Image.asset(ImageAsset.alarm),
                      ),
                      const SizedBox(width: AppSize.s20),
                      startDeliveringDate == null
                          ? ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  startDeliveringDate = DateTime.now().toString();
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(AppSize.s15.sp),
                                ),
                              ),
                              child: Text(
                                'Start Now',
                                style: getRegularStyle(color: ColorManager.red).copyWith(fontSize: 24),
                              ),
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Departure time',
                                  style: getMeduimStyle(color: ColorManager.dark).copyWith(fontSize: 20),
                                ),
                                Text(
                                  extractHourAndMinutes(startDeliveringDate!),
                                  style: getSmallStyle(color: ColorManager.dark).copyWith(fontSize: 15),
                                )
                              ],
                            )
                    ],
                  ),
                ),
              ),
            ),
            infoContainer(Image.asset(ImageAsset.weight), 'Weight:', '10 kg', null),
            infoContainer(Image.asset(ImageAsset.alarm),
                startDeliveringDate != null ? 'Remaining time' : 'Delivery time', '30 min', null),
            infoContainer(
              Image.asset(ImageAsset.call),
              'Call next client',
              '0655443322',
              () async {
                final Uri call = Uri(
                  scheme: 'tel',
                  path: '+213656933390',
                );
                if (await canLaunchUrl(call)) {
                  await launchUrl(call);
                } else {
                  throw 'Could not launch $call';
                }
              },
            ),
            infoContainer(Image.asset(ImageAsset.destination), 'Destination', '44 rue Ibn Badis, 020', () async {
              String googleUrl = "https://www.google.com/maps/search/?api=1&query=37.7749,-122.4194";

              print(googleUrl);

              await canLaunchUrlString(googleUrl)
                  ? await launchUrlString(googleUrl)
                  : throw "can't launch URL $googleUrl";
            }),
            const SizedBox(height: AppSize.s12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeliveredView(),
                          ));
                    },
                    child: Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        color: ColorManager.green,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p12),
                        child: Center(
                          child: Text(
                            'Delivered',
                            style: getlargeStyle(color: ColorManager.white).copyWith(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FeedbackView(),
                          ));
                    },
                    child: Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        color: ColorManager.red,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p12),
                        child: Center(
                          child: Text(
                            'Canceled',
                            style: getlargeStyle(color: ColorManager.white).copyWith(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget infoContainer(Widget icon, String title, String? data, Function()? onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 330,
          height: 75,
          decoration: BoxDecoration(
            color: ColorManager.whiteYellow,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p12),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  child: icon,
                ),
                const SizedBox(width: AppSize.s20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: getMeduimStyle(color: ColorManager.dark).copyWith(fontSize: 20),
                    ),
                    data != null
                        ? Text(
                            data,
                            style: getSmallStyle(color: ColorManager.dark).copyWith(fontSize: 15),
                          )
                        : const SizedBox(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String extractHourAndMinutes(String dateTimeString) {
  DateTime dateTime = DateTime.parse(dateTimeString);
  String formattedTime = "${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}";

  return formattedTime;
}
