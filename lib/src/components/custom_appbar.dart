import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  Widget _logo() {
    return Image.asset(
      'assets/images/logo.png',
      width: 130,
    );
  }

  Widget _actions() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset('assets/svg/icons/bell.svg', width: 24, height: 24),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset('assets/svg/icons/search.svg', width: 24, height: 24),
          ),
        ),
        CircleAvatar(
          backgroundImage: Image.network('https://yt3.ggpht.com/ytc/AKedOLQagIEl2WOUacXZ8WlCPvApoIouP9sNGkMIDVdQ=s176-c-k-c0x00ffffff-no-rj').image,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _logo(),
        _actions(),
      ],
    );
  }
}
