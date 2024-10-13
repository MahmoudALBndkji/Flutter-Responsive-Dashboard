import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.image,
    required this.imageBackColor,
    required this.imageColor,
  });
  final String image;
  final Color imageColor, imageBackColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14.0),
          width: 60.0,
          height: 60.0,
          decoration:
              ShapeDecoration(shape: const OvalBorder(), color: imageBackColor),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor != Colors.white
                ? const Color(0xFF064061)
                : imageColor,
          ),
        ),
      ],
    );
  }
}