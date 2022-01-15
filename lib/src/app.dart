import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_clone_app/controller/app.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AppPage')),
      body: Container(),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex: controller.currentIndex,
          onTap: (value) {
            controller.currentIndex = value;
          },
          items: [
            BottomNavigationBarItem(
              label: 'home',
              icon: SvgPicture.asset('assets/svg/icons/home_off.svg', width: 24),
              activeIcon: SvgPicture.asset('assets/svg/icons/home_on.svg', width: 24),
            ),
            BottomNavigationBarItem(
              label: 'explore',
              icon: SvgPicture.asset('assets/svg/icons/compass_off.svg', width: 24),
              activeIcon: SvgPicture.asset('assets/svg/icons/compass_on.svg', width: 24),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: SvgPicture.asset('assets/svg/icons/plus.svg', width: 35),
              ),
            ),
            BottomNavigationBarItem(
              label: 'subs',
              icon: SvgPicture.asset('assets/svg/icons/subs_off.svg', width: 24),
              activeIcon: SvgPicture.asset('assets/svg/icons/subs_on.svg', width: 24),
            ),
            BottomNavigationBarItem(
              label: 'library',
              icon: SvgPicture.asset('assets/svg/icons/library_off.svg', width: 24),
              activeIcon: SvgPicture.asset('assets/svg/icons/library_on.svg', width: 24),
            ),
          ],
        ),
      ),
    );
  }
}
