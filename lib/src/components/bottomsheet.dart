import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class YoutubeBottomSheet extends StatelessWidget {
  const YoutubeBottomSheet({Key? key}) : super(key: key);
  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '만들기',
          style: TextStyle(fontSize: 16),
        ),
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.close)),
      ],
    );
  }

  Widget _itemButton(Icon icon, String label, void Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
            child: icon,
          ),
          SizedBox(width: 16),
          Text(label),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 20, right: 8, bottom: 40),
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _header(),
            SizedBox(height: 12),
            _itemButton(Icon(Icons.upload), '동영상 업로드', () {
              print('동영상 업로드');
            }),
            SizedBox(height: 12),
            _itemButton(Icon(Icons.live_tv), '실시간 스트리밍', () {
              print('실시간 스트리밍');
            }),
          ],
        ),
      ),
    );
  }
}
