import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tuvatech_portfolio/src/frontend/widgets/app_layout.dart';
import 'package:tuvatech_portfolio/src/utilities/app_colors.dart';

import '../widgets/app_text.dart';

// create welcome page
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppLayout(
      mobile: _MobileWelcomePage(),
      tablet: _TabletWelcomePage(),
      desktop: _DesktopWelcomePage(),
    );
  }
}

// create mobile layout for welcome page
class _MobileWelcomePage extends StatelessWidget {
  const _MobileWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsLight.background,
      body: SizedBox(
        height: double.infinity,
        width: 100.w,
        child: ListView(
          children: [
            SizedBox(
              height: 4.h,
            ),
            Utext(
              text: 'COMING SOON!',
              fontSize: 24.sp,
              color: AppColorsLight.primary,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w900,
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Utext(
              text: '''The new TuvaTech Portfolio website'''
                  ''' will be launching soon!''',
              fontSize: 16.sp,
              color: AppColorsLight.onBackground,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 1.5.h,
            ),
            SizedBox(
              width: 10.w,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CountDownTile(),
                  CountDownTile(),
                  CountDownTile(),
                  CountDownTile(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// create tablet layout for welcome page
class _TabletWelcomePage extends StatelessWidget {
  const _TabletWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsLight.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 120.h,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 7.h),
                Utext(
                  text: 'Coming Soon!',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w900,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 7.h),
                SizedBox(
                  width: 0.w,
                  height: 9.h,
                  child: Container(
                    color: Colors.red,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 2.w),
                        const Expanded(
                          child: CountDownTile(
                            title: 'DAYS',
                            subtitle: '10',
                          ),
                        ),
                        SizedBox(width: 4.w),
                        const Expanded(
                          child: CountDownTile(
                            title: 'HRS',
                            subtitle: '10',
                          ),
                        ),
                        SizedBox(width: 4.w),
                        const Expanded(
                          child: CountDownTile(
                            title: 'MINS',
                            subtitle: '10',
                          ),
                        ),
                        SizedBox(width: 4.w),
                        const Expanded(
                          child: CountDownTile(
                            title: 'SECS',
                            subtitle: '10',
                          ),
                        ),
                        SizedBox(width: 2.w),
                      ],
                    ),
                  ),
                ),
                SvgPicture.asset('images/app_dev.svg'),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 50.w,
                    height: 6.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SocialLinkButton(
                          icon: 'images/github.svg',
                          url: '/images/facebook.svg',
                        ),
                        SocialLinkButton(
                          icon: 'images/linkedin.svg',
                          url: '/images/facebook.svg',
                        ),
                        SocialLinkButton(
                          icon: 'images/twitter.svg',
                          url: '/images/facebook.svg',
                        ),
                        SocialLinkButton(
                          icon: 'images/facebook.svg',
                          url: '/images/facebook.svg',
                        ),
                        SocialLinkButton(
                          icon: 'images/instagram.svg',
                          url: '/images/facebook.svg',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialLinkButton extends StatelessWidget {
  const SocialLinkButton({
    Key? key,
    required this.icon,
    required this.url,
  }) : super(key: key);
  final String url;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: SvgPicture.asset(icon));
  }
}

// create desktop layout for welcome page
class _DesktopWelcomePage extends StatelessWidget {
  const _DesktopWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('geg'),
    );
  }
}

// countdown card tile
class CountDownTile extends StatelessWidget {
  const CountDownTile({
    Key? key,
    this.title,
    this.subtitle,
    this.height,
    this.width,
  }) : super(key: key);
  final String? title;
  final String? subtitle;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
          color: AppColorsLight.primary,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 0.8.w,
              vertical: 0.5.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 1.h,
                ),
                Expanded(
                  child: Utext(
                    text: title ?? '',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Expanded(
                  child: Utext(
                    text: subtitle ?? '',
                    fontSize: 20.sp,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
