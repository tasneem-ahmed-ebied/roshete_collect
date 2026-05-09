import 'package:flutter/material.dart';

import '../../core/resources/color_manager.dart';
import '../../core/resources/height_manager.dart';
import '../../core/resources/icons_size_manager.dart';
import '../../core/resources/padding_manager.dart';
import '../../core/resources/width_manager.dart';

class CustomNavBarUI extends StatelessWidget {
  const CustomNavBarUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(vertical: VerticalPaddingManager.p8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _NavItem(
            icon: Icons.home,
            isActive: true,
          ),
          _NavItem(
            icon: Icons.mail_outline,
          ),
          _NavItem(
            icon: Icons.calendar_today,
          ),
          _NavItem(
            icon: Icons.person_outline,
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  const _NavItem({
    required this.icon,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isActive ? ColorManager.primary : ColorManager.grey,
          size: IconSizeManager.i28,
        ),
        SizedBox(height: HeightManager.h6,),
        if (isActive)
          Container(
            width: WidthManagers.w6,
            height: HeightManager.h6,
            decoration: const BoxDecoration(
              color: ColorManager.primary,
              shape: BoxShape.circle,
            ),
          ),
      ],
    );
  }
}