import 'package:flutter/material.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      extendBodyBehindAppBar: true,
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
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(ImageAsset.deliveryBackground),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p25),
              child: SizedBox(
                height: 700,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 600,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorManager.whiteYellow,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 100.0, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              infoText('Hani Saker'),
                              deviderContainer(),
                              infoText('35 ans'),
                              deviderContainer(),
                              infoText('0655443322'),
                              deviderContainer(),
                              infoText('City:  Guelma'),
                              deviderContainer(),
                              infoText('Country calling code:  +213'),
                              deviderContainer(),
                              infoText('Country:  Algeria'),
                              deviderContainer(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(ImageAsset.picture),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding infoText(String info) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Text(
        info,
        style: getRegularStyle(color: ColorManager.dark),
      ),
    );
  }

  Container deviderContainer() {
    return Container(
      height: 1,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      color: ColorManager.darkGrey,
    );
  }
}
